#include "index/basic_comparator.h"
#include "index/generic_key.h"
#include "page/b_plus_tree_internal_page.h"

/*****************************************************************************
 * HELPER METHODS AND UTILITIES
 *****************************************************************************/
/*
 * Init method after creating a new internal page
 * Including set page type, set current size, set page id, set parent id and set
 * max page size
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::Init(page_id_t page_id, page_id_t parent_id, int max_size) {
    SetPageId(page_id);
    SetParentPageId(parent_id);
    SetSize(0);
    SetPageType(IndexPageType::INTERNAL_PAGE);
    SetMaxSize(max_size);
    
}
/*
 * Helper method to get/set the key associated with input "index"(a.k.a
 * array offset)
 */
INDEX_TEMPLATE_ARGUMENTS
KeyType B_PLUS_TREE_INTERNAL_PAGE_TYPE::KeyAt(int index) const {
  // replace with your own code
 
  assert(index>=0&&index<GetSize());
  return array_[index].first;
}

INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::SetKeyAt(int index, const KeyType &key) {
    assert(index>=0&&index<GetSize());
           array_[index].first=key;
}

/*
 * Helper method to find and return array index(or offset), so that its value
 * equals to input "value"
 */
INDEX_TEMPLATE_ARGUMENTS
int B_PLUS_TREE_INTERNAL_PAGE_TYPE::ValueIndex(const ValueType &value) const {
  int index=-1;
  for(int i=0;i<GetSize();i++){
    if(value==ValueAt(i)){
      index=i;
      break;
    }
    
     
  }
  return index;
}

/*
 * Helper method to get the value associated with input "index"(a.k.a array
 * offset)
 */
INDEX_TEMPLATE_ARGUMENTS
ValueType B_PLUS_TREE_INTERNAL_PAGE_TYPE::ValueAt(int index) const {
  // replace with your own code
  assert(index>=0&&index<GetSize());
  return array_[index].second;
}

/*****************************************************************************
 * LOOKUP
 *****************************************************************************/
/*
 * Find and return the child pointer(page_id) which points to the child page
 * that contains input "key"
 * Start the search from the second key(the first key should always be invalid)
 */
INDEX_TEMPLATE_ARGUMENTS
ValueType B_PLUS_TREE_INTERNAL_PAGE_TYPE::Lookup(const KeyType &key, const KeyComparator &comparator) const {
  // replace with your own code
  assert(GetSize()>1);
  int i;
  for(i=1;i<GetSize()&&comparator(array_[i].first,key)<=0;i++);//找到第一个大于key的index，可以优化一下查�?
  return array_[i-1].second;
}

/*****************************************************************************
 * INSERTION
 *****************************************************************************/
/*
 * Populate new root page with old_value + new_key & new_value
 * When the insertion cause overflow from leaf page all the way upto the root
 * page, you should create a new root page and populate its elements.
 * NOTE: This method is only called within InsertIntoParent()(b_plus_tree.cpp)
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::PopulateNewRoot(const ValueType &old_value, const KeyType &new_key,
                                                     const ValueType &new_value) {
     array_[0].second=old_value;
     array_[1].first=new_key;
     array_[1].second=new_value;
     SetSize(2);
}

/*
 * Insert new_key & new_value pair right after the pair with its value ==
 * old_value
 * @return:  new size after insertion
 */
INDEX_TEMPLATE_ARGUMENTS
int B_PLUS_TREE_INTERNAL_PAGE_TYPE::InsertNodeAfter(const ValueType &old_value, const KeyType &new_key,
                                                    const ValueType &new_value) {
  int index=ValueIndex(old_value)+1;
  assert(index>0);
  IncreaseSize(1);
  for(int i=GetSize()-1;i>index;i--){
    array_[i].first=array_[i-1].first;
    array_[i].second=array_[i-1].second;
  }
  array_[index].first=new_key;
  array_[index].second=new_value;
  return GetSize();
}

/*****************************************************************************
 * SPLIT
 *****************************************************************************/
/*
 * Remove half of key & value pairs from this page to "recipient" page
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::MoveHalfTo(BPlusTreeInternalPage *recipient,
                                                BufferPoolManager *buffer_pool_manager) {
        int total = GetMaxSize() + 1;
        assert(GetSize() == total);
      int copyindex=GetSize()/2;
     //copy pairs
     for(int i=copyindex;i<GetSize() ;i++){
       recipient->array_[i - copyindex].first=array_[i].first;
       recipient->array_[i - copyindex].second=array_[i].second;
       //Update children
       auto*childrenpage =buffer_pool_manager->FetchPage(array_[i].second);
       auto* childnode=reinterpret_cast<BPlusTreePage *>(childrenpage->GetData());
       childnode->SetParentPageId(recipient->GetPageId());
       buffer_pool_manager->UnpinPage(array_[i].second,true);
     }
     //adjust size
     recipient->SetSize(GetSize()-copyindex);
     SetSize(copyindex);                  
     
}

/* Copy entries into me, starting from {items} and copy {size} entries.
 * Since it is an internal page, for all entries (pages) moved, their parents page now changes to me.
 * So I need to 'adopt' them by changing their parent page id, which needs to be persisted with BufferPoolManger
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::CopyNFrom(MappingType *items, int size, BufferPoolManager *buffer_pool_manager) {
     
}

/*****************************************************************************
 * REMOVE
 *****************************************************************************/
/*
 * Remove the key & value pair in internal page according to input index(a.k.a
 * array offset)
 * NOTE: store key&value pair continuously after deletion
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::Remove(int index) {
     for(int i=index;i<GetSize()-1;i++){
         array_[i].first=array_[i+1].first;
         array_[i].second=array_[i+1].second;
     }
     IncreaseSize(-1);
}

/*
 * Remove the only key & value pair in internal page and return the value
 * NOTE: only call this method within AdjustRoot()(in b_plus_tree.cpp)
 */
INDEX_TEMPLATE_ARGUMENTS
ValueType B_PLUS_TREE_INTERNAL_PAGE_TYPE::RemoveAndReturnOnlyChild() {
  // replace with your own code
  ValueType val=ValueAt(0);
  IncreaseSize(-1);
  return val;
}

/*****************************************************************************
 * MERGE
 *****************************************************************************/
/*
 * Remove all of key & value pairs from this page to "recipient" page.
 * The middle_key is the separation key you should get from the parent. You need
 * to make sure the middle key is added to the recipient to maintain the invariant.
 * You also need to use BufferPoolManager to persist changes to the parent page id for those
 * pages that are moved to the recipient
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::MoveAllTo(BPlusTreeInternalPage *recipient, const KeyType &middle_key,
                                               BufferPoolManager *buffer_pool_manager) {
      /*it is internal page ,so when need to move,
      * it only have one child,and the value index is 0,the key in index 0
      * is invalid,we need to get the middle key from its parent to replace it
      */
      SetKeyAt(0,middle_key);
      int start=recipient->GetSize();
      for(int i=0;i<GetSize();i++){
          recipient->array_[i+start].first=array_[i].first;
          recipient->array_[i+start].second=array_[i].second;
      auto*childrenpage =buffer_pool_manager->FetchPage(array_[i].second);
       B_PLUS_TREE_INTERNAL_PAGE* childnode=reinterpret_cast<B_PLUS_TREE_INTERNAL_PAGE *>(childrenpage->GetData());
       childnode->SetParentPageId(recipient->GetPageId());
       buffer_pool_manager->UnpinPage(array_[i].second,true);
      }
      
      recipient->SetSize(start+GetSize());
      SetSize(0);

      buffer_pool_manager->UnpinPage(recipient->GetPageId(),true);
      buffer_pool_manager->UnpinPage(GetPageId(),true);
}

/*****************************************************************************
 * REDISTRIBUTE
 *****************************************************************************/
/*
 * Remove the first key & value pair from this page to tail of "recipient" page.
 *
 * The middle_key is the separation key you should get from the parent. You need
 * to make sure the middle key is added to the recipient to maintain the invariant.
 * You also need to use BufferPoolManager to persist changes to the parent page id for those
 * pages that are moved to the recipient
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::MoveFirstToEndOf(BPlusTreeInternalPage *recipient, const KeyType &middle_key,
                                                      BufferPoolManager *buffer_pool_manager) {
     MappingType pair={KeyAt(0),ValueAt(0)};
     for(int i=0;i<GetSize()-1;i++){
        array_[i].first=array_[i+1].first;
        array_[i].second=array_[i+1].second;
     }
     IncreaseSize(-1);
     recipient->CopyLastFrom(pair,buffer_pool_manager);
     //update child parentpageid
     page_id_t childrenpageid=pair.second;
     Page* childpage=buffer_pool_manager->FetchPage(childrenpageid);
     BPlusTreePage *child = reinterpret_cast<BPlusTreePage *>(childpage->GetData());
     child->SetParentPageId(recipient->GetPageId());
     buffer_pool_manager->UnpinPage(child->GetPageId(),true);
     //update parent
     Page * parentpage=buffer_pool_manager->FetchPage(GetParentPageId());
     B_PLUS_TREE_INTERNAL_PAGE * Pnode=reinterpret_cast<B_PLUS_TREE_INTERNAL_PAGE*>(parentpage->GetData());
     int index=Pnode->ValueIndex(GetPageId());
     Pnode->SetKeyAt(index,array_[0].first);
     buffer_pool_manager->UnpinPage(Pnode->GetPageId(),true);
}

/* Append an entry at the end.
 * Since it is an internal page, the moved entry(page)'s parent needs to be updated.
 * So I need to 'adopt' it by changing its parent page id, which needs to be persisted with BufferPoolManger
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::CopyLastFrom(const MappingType &pair, BufferPoolManager *buffer_pool_manager) {
     array_[GetSize()].first=pair.first;
     array_[GetSize()].second=pair.second;
     IncreaseSize(1);
}

/*
 * Remove the last key & value pair from this page to head of "recipient" page.
 * You need to handle the original dummy key properly, e.g. updating recipient’s array to position the middle_key at the
 * right place.
 * You also need to use BufferPoolManager to persist changes to the parent page id for those pages that are
 * moved to the recipient
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::MoveLastToFrontOf(BPlusTreeInternalPage *recipient, const KeyType &middle_key,
                                                       BufferPoolManager *buffer_pool_manager) {
     MappingType pair={KeyAt(GetSize()-1),ValueAt(GetSize()-1)};
     IncreaseSize(-1);
     recipient->CopyFirstFrom(pair,buffer_pool_manager);
     Page * parentpage=buffer_pool_manager->FetchPage(recipient->GetParentPageId());
     B_PLUS_TREE_INTERNAL_PAGE* Pnode=reinterpret_cast<B_PLUS_TREE_INTERNAL_PAGE*>(parentpage->GetData());
     int index=Pnode->ValueIndex(recipient->GetPageId());
     Pnode->SetKeyAt(index,recipient->array_[0].first);
     buffer_pool_manager->UnpinPage(Pnode->GetPageId(),true);

}

/* Append an entry at the beginning.
 * Since it is an internal page, the moved entry(page)'s parent needs to be updated.
 * So I need to 'adopt' it by changing its parent page id, which needs to be persisted with BufferPoolManger
 */
INDEX_TEMPLATE_ARGUMENTS
void B_PLUS_TREE_INTERNAL_PAGE_TYPE::CopyFirstFrom(const MappingType &pair, BufferPoolManager *buffer_pool_manager) {
     IncreaseSize(1);
     for(int i=GetSize()-2;i>=0;i--){
        array_[i+1].first=array_[i].first;
        array_[i+1].second=array_[i].second;
     }
     array_[0]=pair;
     Page* childpage=buffer_pool_manager->FetchPage(pair.second);
     //set child
     BPlusTreePage* childnode=reinterpret_cast<BPlusTreePage*>(childpage->GetData());
     childnode->SetParentPageId(GetPageId());
     buffer_pool_manager->UnpinPage(childnode->GetPageId(),true);

}

template
class BPlusTreeInternalPage<int, int, BasicComparator<int>>;

template
class BPlusTreeInternalPage<GenericKey<4>, page_id_t, GenericComparator<4>>;

template
class BPlusTreeInternalPage<GenericKey<8>, page_id_t, GenericComparator<8>>;

template
class BPlusTreeInternalPage<GenericKey<16>, page_id_t, GenericComparator<16>>;

template
class BPlusTreeInternalPage<GenericKey<32>, page_id_t, GenericComparator<32>>;

template
class BPlusTreeInternalPage<GenericKey<64>, page_id_t, GenericComparator<64>>;