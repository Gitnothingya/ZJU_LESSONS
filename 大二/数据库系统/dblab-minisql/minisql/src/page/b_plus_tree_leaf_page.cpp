#include <algorithm>
#include "index/basic_comparator.h"
#include "index/generic_key.h"
#include "page/b_plus_tree_leaf_page.h"
#include <stddef.h>
/*****************************************************************************
 * HELPER METHODS AND UTILITIES
 *****************************************************************************/

/**
 * Init method after creating a new leaf page
 * Including set page type, set current size to zero, set page id/parent id, set
 * next page id and set max size
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::Init(page_id_t page_id, page_id_t parent_id, int max_size) {
    SetPageId(page_id);
    SetParentPageId(parent_id);
    SetSize(0);
    SetPageType(IndexPageType::LEAF_PAGE);
    SetNextPageId(INVALID_PAGE_ID);
    SetMaxSize(max_size);
    
}

/**
 * Helper methods to set/get next page id
 */
INDEX_TEMPLATE_ARGUMENTS
page_id_t B_PLUS_TREE_LEAF_PAGE_TYPE::GetNextPageId() const {
  return next_page_id_;
}

INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::SetNextPageId(page_id_t next_page_id) {
     next_page_id_=next_page_id;
}

/**
 * Helper method to find the first index i so that array_[i].first >= key
 * NOTE: This method is only used when generating index iterator
 */
INDEX_TEMPLATE_ARGUMENTS
int B_PLUS_TREE_LEAF_PAGE_TYPE::KeyIndex(const KeyType &key, const KeyComparator &comparator) const {
  assert(GetSize()>=0);
  int i;
  for(i=0;i<GetSize()&&comparator(array_[i].first,key)<0;i++);//找到第一个大于等于key的index，可以优化一下查询
  return i;
}

/*
 * Helper method to find and return the key associated with input "index"(a.k.a
 * array offset)
 */
INDEX_TEMPLATE_ARGUMENTS
KeyType B_PLUS_TREE_LEAF_PAGE_TYPE::KeyAt(int index) const {
  // replace with your own code
  assert(index>=0&&index<GetSize());
  return array_[index].first;
}

/*
 * Helper method to find and return the key & value pair associated with input
 * "index"(a.k.a array offset)
 */
INDEX_TEMPLATE_ARGUMENTS
const MappingType &B_PLUS_TREE_LEAF_PAGE_TYPE::GetItem(int index) {
  assert(index>=0&&index<GetSize());
  return array_[index];
}

/*****************************************************************************
 * INSERTION
 *****************************************************************************/
/*
 * Insert key & value pair into leaf page ordered by key
 * @return page size after insertion
 */
INDEX_TEMPLATE_ARGUMENTS
int B_PLUS_TREE_LEAF_PAGE_TYPE::Insert(const KeyType &key, const ValueType &value, const KeyComparator &comparator) {
  
  int index=KeyIndex(key,comparator);//find the first index i so that array_[i].first >= key
  assert(index>=0);
  IncreaseSize(1);
  for(int i=GetSize()-1;i>index;i--){
    array_[i].first=array_[i-1].first;
    array_[i].second=array_[i-1].second;
  }
  array_[index].first=key;
  array_[index].second=value;
  return GetSize();
}

/*****************************************************************************
 * SPLIT
 *****************************************************************************/
/*
 * Remove half of key & value pairs from this page to "recipient" page
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::MoveHalfTo(BPlusTreeLeafPage *recipient,__attribute__((unused)) BufferPoolManager *buffer_pool_manager) {

     int copyindex=GetSize()/2;
     //copy pairs
     for(int i=copyindex;i<GetSize();i++){
      recipient->array_[i - copyindex].first=array_[i].first;
      recipient->array_[i - copyindex].second=array_[i].second;
     }
     //add recipient to link list
     recipient->SetNextPageId(GetNextPageId());
     SetNextPageId(recipient->GetPageId());
     //adjust size
     recipient->SetSize(GetSize()-copyindex);
     SetSize(copyindex);
}

/*
 * Copy starting from items, and copy {size} number of elements into me.
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::CopyNFrom(MappingType *items, int size) {
     
}

/*****************************************************************************
 * LOOKUP
 *****************************************************************************/
/*
 * For the given key, check to see whether it exists in the leaf page. If it
 * does, then store its corresponding value in input "value" and return true.
 * If the key does not exist, then return false
 */
INDEX_TEMPLATE_ARGUMENTS
bool B_PLUS_TREE_LEAF_PAGE_TYPE::Lookup(const KeyType &key, ValueType &value, const KeyComparator &comparator) const {
     int index=KeyIndex(key,comparator);
     if(index<GetSize()){
       if(comparator(array_[index].first,key)==0){
         value=array_[index].second;
         return true;
       }        
     }
     return false;
}

/*****************************************************************************
 * REMOVE
 *****************************************************************************/
/*
 * First look through leaf page to see whether delete key exist or not. If
 * exist, perform deletion, otherwise return immediately.
 * NOTE: store key&value pair continuously after deletion
 * @return  page size after deletion
 */
INDEX_TEMPLATE_ARGUMENTS
int B_PLUS_TREE_LEAF_PAGE_TYPE::RemoveAndDeleteRecord(const KeyType &key, const KeyComparator &comparator) {
  ValueType value;
  bool exist=Lookup(key,value,comparator);
  if(!exist) return GetSize();
  else{
    int index=KeyIndex(key,comparator);
    for(int i=index;i<GetSize()-1;i++){
        array_[i].first=array_[i+1].first;
        array_[i].second=array_[i+1].second; 
    }
    IncreaseSize(-1);
  }
  return GetSize();
}

/*****************************************************************************
 * MERGE
 *****************************************************************************/
/*
 * Remove all of key & value pairs from this page to "recipient" page. Don't forget
 * to update the next_page id in the sibling page
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::MoveAllTo(BPlusTreeLeafPage *recipient, const KeyType &middle_key, BufferPoolManager *buffer_pool_manager){
     int sindex=recipient->GetSize();
     for(int i=0;i<GetSize();i++){
        recipient->array_[sindex+i].first=array_[i].first;
        recipient->array_[sindex+i].second=array_[i].second;
     }
     //update the next_page id and size
     recipient->SetNextPageId(GetNextPageId());
     recipient->IncreaseSize(GetSize());
     SetSize(0);
     
}

/*****************************************************************************
 * REDISTRIBUTE
 *****************************************************************************/
/*
 * Remove the first key & value pair from this page to "recipient" page.
 *
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::MoveFirstToEndOf(BPlusTreeLeafPage *recipient,const KeyType &middle_key,BufferPoolManager *buffer_pool_manager) {
  MappingType item=array_[0];
  for(int i=0;i<GetSize()-1;i++){
    array_[i].first=array_[i+1].first;
    array_[i].second=array_[i+1].second;
  }
  IncreaseSize(-1);
  recipient->CopyLastFrom(item);
  
  Page * parentpage=buffer_pool_manager->FetchPage(GetParentPageId());
  B_PLUS_TREE_INTERNAL_PAGE  * Pnode=reinterpret_cast<B_PLUS_TREE_INTERNAL_PAGE  *>(parentpage->GetData());
  int index=Pnode->ValueIndex(GetPageId());
  Pnode->SetKeyAt(index,array_[0].first);
  buffer_pool_manager->UnpinPage(Pnode->GetPageId(),true);
}

/*
 * Copy the item into the end of my item list. (Append item to my array)
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::CopyLastFrom(const MappingType &item) {
    array_[GetSize()]=item;
    IncreaseSize(1);
}

/*
 * Remove the last key & value pair from this page to "recipient" page.
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::MoveLastToFrontOf(BPlusTreeLeafPage *recipient,const KeyType &middle_key,BufferPoolManager *buffer_pool_manager){
     MappingType item=GetItem(GetSize()-1);
     IncreaseSize(-1);
     recipient->CopyFirstFrom(item);
     Page * parentpage=buffer_pool_manager->FetchPage(GetParentPageId());
     B_PLUS_TREE_INTERNAL_PAGE  * Pnode=reinterpret_cast<B_PLUS_TREE_INTERNAL_PAGE *>(parentpage->GetData());
     int index=Pnode->ValueIndex(recipient->GetPageId());
     Pnode->SetKeyAt(index,recipient->array_[0].first);
     buffer_pool_manager->UnpinPage(Pnode->GetPageId(),true);
}

/*
 * Insert item at the front of my items. Move items accordingly.
 *
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_LEAF_PAGE_TYPE::CopyFirstFrom(const MappingType &item) {
     IncreaseSize(1);
     for(int i=GetSize()-2;i>=0;i--){
        array_[i+1].first=array_[i].first;
        array_[i+1].second=array_[i].second;
     }
     array_[0]=item;
}

template
class BPlusTreeLeafPage<int, int, BasicComparator<int>>;

template
class BPlusTreeLeafPage<GenericKey<4>, RowId, GenericComparator<4>>;

template
class BPlusTreeLeafPage<GenericKey<8>, RowId, GenericComparator<8>>;

template
class BPlusTreeLeafPage<GenericKey<16>, RowId, GenericComparator<16>>;

template
class BPlusTreeLeafPage<GenericKey<32>, RowId, GenericComparator<32>>;

template
class BPlusTreeLeafPage<GenericKey<64>, RowId, GenericComparator<64>>;