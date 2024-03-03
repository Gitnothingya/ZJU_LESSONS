#include "index/basic_comparator.h"
#include "index/generic_key.h"
#include "index/index_iterator.h"

INDEX_TEMPLATE_ARGUMENTS INDEXITERATOR_TYPE:: IndexIterator(int index,B_PLUS_TREE_LEAF_PAGE_TYPE * leaf,BufferPoolManager* buffer_pool_manager){
     index_=index;
     leaf_=leaf;
     buffer_pool_manager_=buffer_pool_manager;
}

INDEX_TEMPLATE_ARGUMENTS INDEXITERATOR_TYPE::~IndexIterator() {
  assert(leaf_!=nullptr);
    buffer_pool_manager_->UnpinPage(leaf_->GetPageId(),false);
}

INDEX_TEMPLATE_ARGUMENTS const MappingType &INDEXITERATOR_TYPE::operator*() {
     assert(leaf_!=nullptr);
     return leaf_->GetItem(index_);
}

INDEX_TEMPLATE_ARGUMENTS INDEXITERATOR_TYPE &INDEXITERATOR_TYPE::operator++() {
     if(index_+1<leaf_->GetSize()){
       index_=index_+1;
     }
     else{
       page_id_t nextpageID=leaf_->GetNextPageId();
       if(nextpageID==INVALID_PAGE_ID)
          leaf_=nullptr;
       else{
         //first Unpin leaf 
         buffer_pool_manager_->UnpinPage(leaf_->GetPageId(),false);
         auto* nextPage=buffer_pool_manager_->FetchPage(nextpageID);
         leaf_=reinterpret_cast<B_PLUS_TREE_LEAF_PAGE_TYPE *>(nextPage->GetData());
         index_=0;
       }
     }
     return *this;
}

INDEX_TEMPLATE_ARGUMENTS
bool INDEXITERATOR_TYPE::operator==(const IndexIterator &itr) const {
  return (this->index_==itr.index_)&&(this->leaf_->GetPageId()==itr.leaf_->GetPageId());
}

INDEX_TEMPLATE_ARGUMENTS
bool INDEXITERATOR_TYPE::operator!=(const IndexIterator &itr) const {
  return !(*this==itr);
}

template
class IndexIterator<int, int, BasicComparator<int>>;

template
class IndexIterator<GenericKey<4>, RowId, GenericComparator<4>>;

template
class IndexIterator<GenericKey<8>, RowId, GenericComparator<8>>;

template
class IndexIterator<GenericKey<16>, RowId, GenericComparator<16>>;

template
class IndexIterator<GenericKey<32>, RowId, GenericComparator<32>>;

template
class IndexIterator<GenericKey<64>, RowId, GenericComparator<64>>;
