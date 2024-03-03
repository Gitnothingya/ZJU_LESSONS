#include "common/macros.h"
#include "storage/table_iterator.h"
#include "storage/table_heap.h"

TableIterator::TableIterator(RowId rowid, TableHeap* table_heap_)
  :iter(new Row(rowid)), table_heap_(table_heap_)
{
  if(rowid.GetPageId() != INVALID_PAGE_ID)
    table_heap_->GetTuple(iter, nullptr);
}

TableIterator::TableIterator(const TableIterator &other) 
  //:iter(new Row(*other.iter)), table_heap_(other.table_heap_)
{
  if(other.iter == nullptr) cout << "gg" << endl;
  iter = new Row(*other.iter);
  table_heap_ = other.table_heap_;
}

TableIterator::~TableIterator() {
  delete iter;  //释放Row对象空间
}


const Row &TableIterator::operator*() {
  //也许要处理迭代器位于无效位置的情况
  ASSERT(*this != table_heap_->End(), "Error, tableiter == end!");
  return *iter;
}

Row *TableIterator::operator->() {  
  //也许要处理迭代器位于无效位置的情况
  ASSERT(*this != table_heap_->End(), "Error, tableiter == end!");
  return iter;
}

TableIterator &TableIterator::operator++() {

  auto page = reinterpret_cast<TablePage *>(table_heap_->buffer_pool_manager_->FetchPage(iter->GetRowId().GetPageId()));
  RowId next_rowid;
  
  //是否遍历到了页尾
  if(page->GetNextTupleRid(iter->GetRowId(), &next_rowid) == false)
  {
    while(page->GetNextPageId() != INVALID_PAGE_ID)
    {
      table_heap_->buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
      page = reinterpret_cast<TablePage *>(table_heap_->buffer_pool_manager_->FetchPage(page->GetNextPageId()));
      if(page->GetFirstTupleRid(&next_rowid))
        break;
    }
  }
  iter->SetRowId(next_rowid);

  if(*this != table_heap_->End())
  {
    table_heap_->GetTuple(iter, nullptr); //获得新指向的tuple数据
  }
  table_heap_->buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
  return *this;
}

TableIterator TableIterator::operator++(int) {
  TableIterator old(*this);

  auto page = reinterpret_cast<TablePage *>(table_heap_->buffer_pool_manager_->FetchPage(iter->GetRowId().GetPageId()));
  RowId next_rowid;
  
  //是否遍历到了页尾
  if(page->GetNextTupleRid(iter->GetRowId(), &next_rowid) == false)
  {
    while(page->GetNextPageId() != INVALID_PAGE_ID)
    {
      table_heap_->buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
      page = reinterpret_cast<TablePage *>(table_heap_->buffer_pool_manager_->FetchPage(page->GetNextPageId()));
      if(page->GetFirstTupleRid(&next_rowid))
        break;
    }
  }

  delete iter;
  iter = new Row(next_rowid);


  if(*this != table_heap_->End())
  {
    table_heap_->GetTuple(iter, nullptr); //获得新指向的tuple数据
  }
  table_heap_->buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);

  return TableIterator(old);
}
