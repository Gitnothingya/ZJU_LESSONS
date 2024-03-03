#include "storage/table_heap.h"

bool TableHeap::InsertTuple(Row &row, Transaction *txn) {

  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(first_page_id_));
  if(page == nullptr)
    return false;

  while(page->GetNextPageId() != INVALID_PAGE_ID)
  {
    if(page->InsertTuple(row, schema_, txn, lock_manager_, log_manager_)) //����ɹ�
    {
      buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);
      return true;
    }
      
    else buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
    //���������һ��tablepage
    page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(page->GetNextPageId()));
  }

  //��������tablepage���Ų��£���Ҫ�����µ�ҳ
  page_id_t newpageid;
  auto newpage = reinterpret_cast<TablePage *>(buffer_pool_manager_->NewPage(newpageid));
  if(page == nullptr) //���벻���µ�ҳ
  {
    buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
    return false;
  }

  //���뵽����ҳ��ά��˫��������ʼ����ҳ
  page->SetNextPageId(newpageid);
  newpage->Init(newpageid, page->GetTablePageId(), log_manager_, txn);
  buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);
  //���뵽��ҳ��
  newpage->InsertTuple(row, schema_, txn, lock_manager_, log_manager_);
  buffer_pool_manager_->UnpinPage(newpageid, true);
  return true;
  
}

/**
 * @brief ͨ��RowId�Լ�¼��λ
 * 
 * @param rid 
 * @param txn 
 * @return true 
 * @return false 
 */
bool TableHeap::MarkDelete(const RowId &rid, Transaction *txn) {
  // Find the page which contains the tuple.
  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(rid.GetPageId()));
  // If the page could not be found, then abort the transaction.
  if (page == nullptr) {
    return false;
  }
  // Otherwise, mark the tuple as deleted.
  page->WLatch();
  page->MarkDelete(rid, txn, lock_manager_, log_manager_);
  page->WUnlatch();
  buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);
  return true;
}

bool TableHeap::UpdateTuple(/* const  */Row &row, const RowId &rid, Transaction *txn) {
  Row oldrow(rid);

  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(rid.GetPageId()));
  if (page == nullptr) {
    return false;
  }

  int status = page->UpdateTuple(row, &oldrow, schema_, txn, lock_manager_, log_manager_);
  
  if(status == 0)
  {
    buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);
    return true;
  }
  else if(status == -1) //��������
  {
    buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
    return false;
  } 
  else  //ִ��ɾ��/����������������ʧ�ܣ��ͻع�ɾ������
  {
    buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
    bool isdelete = MarkDelete(rid, txn);
    if(isdelete == false) return false;

    bool isinsert = InsertTuple(row, txn);
    if(isinsert) return true; //����ɹ�

    //����ʧ�ܣ����²���ʧ�ܣ��ع�ɾ������
    RollbackDelete(rid, txn);
    return false;
  }
}

void TableHeap::ApplyDelete(const RowId &rid, Transaction *txn) {

  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(rid.GetPageId()));
  if (page == nullptr) {
    return;
  }

  page->ApplyDelete(rid, txn, nullptr);
  buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);  
  // Step1: Find the page which contains the tuple.
  // Step2: Delete the tuple from the page.
}

void TableHeap::RollbackDelete(const RowId &rid, Transaction *txn) {
  // Find the page which contains the tuple.
  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(rid.GetPageId()));
  assert(page != nullptr);
  // Rollback the delete.
  page->WLatch();
  page->RollbackDelete(rid, txn, log_manager_);
  page->WUnlatch();
  buffer_pool_manager_->UnpinPage(page->GetTablePageId(), true);
}

//Ҫfree��������ҳ
void TableHeap::FreeHeap() {
  if(first_page_id_ == INVALID_PAGE_ID) return;
  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(first_page_id_));
  assert(page != nullptr);

  page_id_t page_id = first_page_id_;
  while(page_id != INVALID_PAGE_ID)
  {
    auto nextpage = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(page->GetNextPageId()));
    buffer_pool_manager_->UnpinPage(page_id, false);
    buffer_pool_manager_->DeletePage(page_id);
    if(nextpage == nullptr) break;  //��Ч����ҳ
    page_id = nextpage->GetPageId();
    page = nextpage;
  }

  first_page_id_ = INVALID_PAGE_ID;
}

bool TableHeap::GetTuple(Row *row, Transaction *txn) {

  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(row->GetRowId().GetPageId()));

  if(page == nullptr)
    return false;
  

  bool isget = page->GetTuple(row, schema_, txn, lock_manager_);

  buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
  return isget;
}

TableIterator TableHeap::Begin(Transaction *txn) {
  RowId begin;
  auto page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(first_page_id_));
  while(page)
  {
    if(page->GetFirstTupleRid(&begin))
    {
      buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
      return TableIterator(begin, this);
    }

    buffer_pool_manager_->UnpinPage(page->GetTablePageId(), false);
    page = reinterpret_cast<TablePage *>(buffer_pool_manager_->FetchPage(page->GetNextPageId()));
  }
  begin.Set(INVALID_PAGE_ID, 0);
  return TableIterator(begin, this);
}

/**
 * @brief ��������EndӦ��λ�����һ����ЧԪ�صĺ�һ��λ�ã���߾͵���λ����Чҳ
 * 
 * @return TableIterator 
 */
TableIterator TableHeap::End() {
  RowId end;
  end.Set(INVALID_PAGE_ID, 0);
  return TableIterator(end, this);
}
