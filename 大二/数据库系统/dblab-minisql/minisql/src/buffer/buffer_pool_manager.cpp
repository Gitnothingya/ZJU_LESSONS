#include "buffer/buffer_pool_manager.h"
#include "glog/logging.h"
#include "page/bitmap_page.h"

BufferPoolManager::BufferPoolManager(size_t pool_size, DiskManager *disk_manager)
        : pool_size_(pool_size), disk_manager_(disk_manager) {
  pages_ = new Page[pool_size_];
  replacer_ = new LRUReplacer(pool_size_);
  for (size_t i = 0; i < pool_size_; i++) {
    free_list_.emplace_back(i);
  }
}

BufferPoolManager::~BufferPoolManager() {
  for (auto page: page_table_) {
    FlushPage(page.first);	//把在缓冲区使用的数据页写回磁盘
  }
  delete[] pages_;
  delete replacer_;
}

Page *BufferPoolManager::FetchPage(page_id_t page_id) {
	if(page_id == INVALID_PAGE_ID) return nullptr;
	if(IsPageFree(page_id)) return nullptr;	//数据页数据无效
	

	if(page_table_.count(page_id))	//已经在缓冲区
	{
		frame_id_t frame = page_table_[page_id];
		replacer_->Pin(frame);
		pages_[frame].pin_count_++;
		return &pages_[frame];
	}

	//在磁盘
	if(free_list_.size() == 0 && replacer_->Size() == 0)	//既没有空闲页，也没有可替换的页
		return nullptr;
	
	frame_id_t frame;

	if(free_list_.size())	//从自由页列申请
	{
		frame = free_list_.front();
		free_list_.pop_front();
	}
	else	//替换页面
	{
		replacer_->Victim(&frame);
	}

	if(pages_[frame].is_dirty_) 
		disk_manager_->WritePage(pages_[frame].page_id_, pages_[frame].data_);	//BUG1：要将原先页的数据写回磁盘，而不是page_id

	page_table_.erase(pages_[frame].page_id_);
	page_table_[page_id] = frame;

	pages_[frame].page_id_ = page_id;
	pages_[frame].pin_count_ = 1;
	pages_[frame].is_dirty_ = false;
	disk_manager_->ReadPage(page_id, pages_[frame].data_);
	return &pages_[frame];

  // 1.     Search the page table for the requested page (P).
  // 1.1    If P exists, pin it and return it immediately.
  // 1.2    If P does not exist, find a replacement page (R) from either the free list or the replacer.
  //        Note that pages are always found from the free list first.
  // 2.     If R is dirty, write it back to the disk.
  // 3.     Delete R from the page table and insert P.
  // 4.     Update P's metadata, read in the page content from disk, and then return a pointer to P.

}

Page *BufferPoolManager::NewPage(page_id_t &page_id) {
	if(free_list_.size() == 0 && replacer_->Size() == 0)	//既没有空闲页，也没有可替换的页
		return nullptr;
	
	page_id_t newpage = AllocatePage();
	if(newpage == INVALID_PAGE_ID)
		return nullptr;

	page_id = newpage;

	frame_id_t newframe;

	if(free_list_.size())	//从自由页列申请
	{
		newframe = free_list_.front();
		free_list_.pop_front();
	}
	else	//替换页面
	{
		replacer_->Victim(&newframe);
		page_table_.erase(pages_[newframe].page_id_);	//BUG2：要在表中去掉被替换项
	}

	pages_[newframe].ResetMemory();
	pages_[newframe].page_id_ = newpage;
	pages_[newframe].pin_count_ = 1;
	pages_[newframe].is_dirty_ = false;

	page_table_[newpage] = newframe;

	return &pages_[newframe];

  // 0.   Make sure you call AllocatePage!
  // 1.   If all the pages in the buffer pool are pinned, return nullptr.
  // 2.   Pick a victim page P from either the free list or the replacer. Always pick from the free list first.
  // 3.   Update P's metadata, zero out memory and add P to the page table.
  // 4.   Set the page ID output parameter. Return a pointer to P.

}

bool BufferPoolManager::DeletePage(page_id_t page_id) {
	if(page_table_.count(page_id) == 0)
		return true;

	frame_id_t frame = page_table_[page_id];
	if(pages_[frame].pin_count_ != 0)
		return false;
	
	page_table_.erase(page_id);
	pages_[frame].page_id_ = INVALID_PAGE_ID;
	pages_[frame].pin_count_ = 0;
	pages_[frame].is_dirty_ = false;

	free_list_.push_back(frame);
	//fix
	DeallocatePage(page_id);

	return true;

  // 0.   Make sure you call DeallocatePage!
  // 1.   Search the page table for the requested page (P).
  // 1.   If P does not exist, return true.
  // 2.   If P exists, but has a non-zero pin-count, return false. Someone is using the page.
  // 3.   Otherwise, P can be deleted. Remove P from the page table, reset its metadata and return it to the free list.
}

bool BufferPoolManager::UnpinPage(page_id_t page_id, bool is_dirty) {	
	if(page_table_.count(page_id) == 0) return true;	//根本没用这一页

	if(is_dirty) FlushPage(page_id);

	frame_id_t frame = page_table_[page_id];
	if(pages_[frame].pin_count_ > 0) pages_[frame].pin_count_--;
	if(pages_[frame].pin_count_ == 0)
	{
		replacer_->Unpin(frame);
		pages_[frame].is_dirty_ = false;
		return true;
	}

	return false;
}

bool BufferPoolManager::FlushPage(page_id_t page_id) {
	if(page_table_.count(page_id) == 0) return true;	//根本没用这一页

	frame_id_t frame = page_table_[page_id];

	disk_manager_->WritePage(page_id, pages_[frame].data_);
	return true;
}

page_id_t BufferPoolManager::AllocatePage() {
  int next_page_id = disk_manager_->AllocatePage();
  return next_page_id;
}

void BufferPoolManager::DeallocatePage(page_id_t page_id) {
  disk_manager_->DeAllocatePage(page_id);
}

bool BufferPoolManager::IsPageFree(page_id_t page_id) {
  return disk_manager_->IsPageFree(page_id);
}

// Only used for debug
bool BufferPoolManager::CheckAllUnpinned() {
  bool res = true;
  for (size_t i = 0; i < pool_size_; i++) {
    if (pages_[i].pin_count_ != 0) {
      res = false;
      LOG(ERROR) << "page " << pages_[i].page_id_ << " pin count:" << pages_[i].pin_count_ << endl;
    }
  }
  return res;
}