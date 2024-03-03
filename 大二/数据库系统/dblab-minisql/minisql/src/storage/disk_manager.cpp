#include <stdexcept>
#include <sys/stat.h>

#include "glog/logging.h"
#include "page/bitmap_page.h"
#include "storage/disk_manager.h"

DiskManager::DiskManager(const std::string &db_file) : file_name_(db_file) {
  std::scoped_lock<std::recursive_mutex> lock(db_io_latch_);
  db_io_.open(db_file, std::ios::binary | std::ios::in | std::ios::out);
  // directory or file does not exist
  if (!db_io_.is_open()) {
    db_io_.clear();
    // create a new file
    db_io_.open(db_file, std::ios::binary | std::ios::trunc | std::ios::out);
    db_io_.close();
    // reopen with original mode
    db_io_.open(db_file, std::ios::binary | std::ios::in | std::ios::out);
    if (!db_io_.is_open()) {
      throw std::exception();
    }
  }
  ReadPhysicalPage(META_PAGE_ID, meta_data_);   //读取硬盘元数据页至缓存
}

void DiskManager::Close() {
  std::scoped_lock<std::recursive_mutex> lock(db_io_latch_);
  if (!closed) {
    db_io_.close();
    closed = true;
  }
}

void DiskManager::ReadPage(page_id_t logical_page_id, char *page_data) {
  ASSERT(logical_page_id >= 0, "Invalid page id.");
  ReadPhysicalPage(MapPageId(logical_page_id), page_data);
}

void DiskManager::WritePage(page_id_t logical_page_id, const char *page_data) {
  ASSERT(logical_page_id >= 0, "Invalid page id.");
  WritePhysicalPage(MapPageId(logical_page_id), page_data);
}

page_id_t DiskManager::AllocatePage() {

  DiskFileMetaPage* metadata = reinterpret_cast<DiskFileMetaPage*>(meta_data_);

	if(metadata->num_allocated_pages_ == MAX_VALID_PAGE_ID)	//全部分配完了
		return INVALID_PAGE_ID;

	uint32_t i;
	uint32_t data_page_id;
	for(i = 0; i < (PAGE_SIZE - 8) / 4; i++)
	{
		if(metadata->GetExtentUsedPage(i) < BitmapPage<PAGE_SIZE>::GetMaxSupportedSize())	//此分区有空页
			break;
		//else i++; BUG：多加了一次	
	}

	if(i >= metadata->num_extents_)
		metadata->num_extents_++;

  page_id_t bitmap_physical_id = i * (BitmapPage<PAGE_SIZE>::GetMaxSupportedSize() + 1) + 1;
  char bitmap_[PAGE_SIZE];
  ReadPhysicalPage(bitmap_physical_id, bitmap_);  //从磁盘读取位图页信息
  BitmapPage<PAGE_SIZE>* bitmap = reinterpret_cast<BitmapPage<PAGE_SIZE>*>(bitmap_);

	bitmap->AllocatePage(data_page_id);
	data_page_id += i * BitmapPage<PAGE_SIZE>::GetMaxSupportedSize(); //根据相对页号计算绝对页号
	metadata->num_allocated_pages_++;
	metadata->extent_used_page_[i]++;

  WritePhysicalPage(bitmap_physical_id, bitmap_);

	return data_page_id;
}

void DiskManager::DeAllocatePage(page_id_t logical_page_id) {
  DiskFileMetaPage* metadata = reinterpret_cast<DiskFileMetaPage*>(meta_data_);
	uint32_t extents_index = logical_page_id / BitmapPage<PAGE_SIZE>::GetMaxSupportedSize();
	uint32_t data_page_index = logical_page_id % BitmapPage<PAGE_SIZE>::GetMaxSupportedSize();  //相对页号

  page_id_t bitmap_physical_id = extents_index * (BitmapPage<PAGE_SIZE>::GetMaxSupportedSize() + 1) + 1;
  char bitmap_[PAGE_SIZE];
  ReadPhysicalPage(bitmap_physical_id, bitmap_);  //从磁盘读取位图页信息
  BitmapPage<PAGE_SIZE>* bitmap = reinterpret_cast<BitmapPage<PAGE_SIZE>*>(bitmap_);

	if(bitmap->DeAllocatePage(data_page_index))
	{
		metadata->num_allocated_pages_--;
		metadata->extent_used_page_[extents_index]--;
    WritePhysicalPage(bitmap_physical_id, bitmap_);
	}
}

bool DiskManager::IsPageFree(page_id_t logical_page_id) {
	uint32_t extents_index = logical_page_id / BitmapPage<PAGE_SIZE>::GetMaxSupportedSize();
	uint32_t data_page_index = logical_page_id % BitmapPage<PAGE_SIZE>::GetMaxSupportedSize();

  page_id_t bitmap_physical_id = extents_index * (BitmapPage<PAGE_SIZE>::GetMaxSupportedSize() + 1) + 1;
  char bitmap_[PAGE_SIZE];
  ReadPhysicalPage(bitmap_physical_id, bitmap_);  //从磁盘读取位图页信息
  BitmapPage<PAGE_SIZE>* bitmap = reinterpret_cast<BitmapPage<PAGE_SIZE>*>(bitmap_);
	
	return bitmap->IsPageFree(data_page_index);
}

page_id_t DiskManager::MapPageId(page_id_t logical_page_id) {
	return logical_page_id + logical_page_id / BitmapPage<PAGE_SIZE>::GetMaxSupportedSize() + 2;
}

int DiskManager::GetFileSize(const std::string &file_name) {
  struct stat stat_buf;
  int rc = stat(file_name.c_str(), &stat_buf);
  return rc == 0 ? stat_buf.st_size : -1;
}

void DiskManager::ReadPhysicalPage(page_id_t physical_page_id, char *page_data) {
  int offset = physical_page_id * PAGE_SIZE;
  // check if read beyond file length
  if (offset >= GetFileSize(file_name_)) {
#ifdef ENABLE_BPM_DEBUG
    LOG(INFO) << "Read less than a page" << std::endl;
#endif
    memset(page_data, 0, PAGE_SIZE);
  } else {
    // set read cursor to offset
    db_io_.seekp(offset);
    db_io_.read(page_data, PAGE_SIZE);
    // if file ends before reading PAGE_SIZE
    int read_count = db_io_.gcount();
    if (read_count < PAGE_SIZE) {
#ifdef ENABLE_BPM_DEBUG
      LOG(INFO) << "Read less than a page" << std::endl;
#endif
      memset(page_data + read_count, 0, PAGE_SIZE - read_count);
    }
  }
}

void DiskManager::WritePhysicalPage(page_id_t physical_page_id, const char *page_data) {
  size_t offset = static_cast<size_t>(physical_page_id) * PAGE_SIZE;
  // set write cursor to offset
  db_io_.seekp(offset);
  db_io_.write(page_data, PAGE_SIZE);
  // check for I/O error
  if (db_io_.bad()) {
    LOG(ERROR) << "I/O error while writing";
    return;
  }
  // needs to flush to keep disk file in sync
  db_io_.flush();
}