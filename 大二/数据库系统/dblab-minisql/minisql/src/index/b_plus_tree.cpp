#include <string>
#include "glog/logging.h"
#include "index/b_plus_tree.h"
#include "index/basic_comparator.h"
#include "index/generic_key.h"
#include "page/index_roots_page.h"

INDEX_TEMPLATE_ARGUMENTS
BPLUSTREE_TYPE::BPlusTree(index_id_t index_id, BufferPoolManager *buffer_pool_manager, const KeyComparator &comparator,
                          int leaf_max_size, int internal_max_size)
        : index_id_(index_id),
          buffer_pool_manager_(buffer_pool_manager),
          comparator_(comparator),
          leaf_max_size_(leaf_max_size),
          internal_max_size_(internal_max_size) {
          root_page_id_=INVALID_PAGE_ID;
          IndexRootsPage *idnexrootpage=reinterpret_cast<IndexRootsPage*>(buffer_pool_manager_->FetchPage(INDEX_ROOTS_PAGE_ID));
          page_id_t root_page_id;
          bool flag = idnexrootpage->GetRootId(index_id,&root_page_id);
          if(flag==true) root_page_id_ = root_page_id;
          buffer_pool_manager_->UnpinPage(INDEX_ROOTS_PAGE_ID,false);
}

INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::Destroy() {
}

/*
 * Helper function to decide whether current b+tree is empty
 */
INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::IsEmpty() const {
  if(root_page_id_==INVALID_PAGE_ID)
     return true;
  else
     return false;
}

/*****************************************************************************
 * SEARCH
 *****************************************************************************/
/*
 * Return the only value that associated with input key
 * This method is used for point query
 * @return : true means key exists
 */
INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::GetValue(const KeyType &key, std::vector<ValueType> &result, Transaction *transaction) {
  Page *tarpage = FindLeafPage(key);//找到叶节�?
  if(tarpage==nullptr) return false;
  LeafPage * tar=reinterpret_cast<LeafPage *>(tarpage->GetData());
  ValueType re;
  bool ret=tar->Lookup(key,re,comparator_);
  result.push_back(re);
  buffer_pool_manager_->UnpinPage(tar->GetPageId(), false);

  return ret;
}

/*****************************************************************************
 * INSERTION
 *****************************************************************************/
/*
 * Insert constant key & value pair into b+ tree
 * if current tree is empty, start new tree, update root page id and insert
 * entry, otherwise insert into leaf page.
 * @return: since we only support unique key, if user try to insert duplicate
 * keys return false, otherwise return true.
 */
INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::Insert(const KeyType &key, const ValueType &value, Transaction *transaction) {
  if(IsEmpty()){
    StartNewTree(key,value);
    return true;
  }
  else return InsertIntoLeaf(key,value,transaction);
}
/*
 * Insert constant key & value pair into an empty tree
 * User needs to first ask for new page from buffer pool manager(NOTICE: throw
 * an "out of memory" exception if returned value is nullptr), then update b+
 * tree's root page id and insert entry directly into leaf page.
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::StartNewTree(const KeyType &key, const ValueType &value) {
  //ask for new page from buffer pool manager
  page_id_t newpageid;
  auto* newpage=buffer_pool_manager_->NewPage(newpageid);
  ASSERT(newpage!=nullptr,"out of memmory");
  LeafPage* node = reinterpret_cast<LeafPage *>(newpage->GetData());
  //update b+ tree's root page id
  node->SetMaxSize(leaf_max_size_);
  node->Init(newpageid,INVALID_PAGE_ID);
  root_page_id_=newpageid;
  UpdateRootPageId(true);
  
  //insert entry directly into leaf page
  node->Insert(key,value,comparator_);
  buffer_pool_manager_->UnpinPage(newpageid,true);


}

/*
 * Insert constant key & value pair into leaf page
 * User needs to first find the right leaf page as insertion target, then look
 * through leaf page to see whether insert key exist or not. If exist, return
 * immediately, otherwise insert entry. Remember to deal with split if necessary.
 * @return: since we only support unique key, if user try to insert duplicate
 * keys return false, otherwise return true.
 */
INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::InsertIntoLeaf(const KeyType &key, const ValueType &value, Transaction *transaction) {
  Page * leafpage=FindLeafPage(key);
  LeafPage * leafnode=reinterpret_cast<LeafPage *>(leafpage->GetData());
  leafnode->SetMaxSize(leaf_max_size_);
  //look through leaf page to see whether insert key exist or not
  ValueType V;
  bool exist=leafnode->Lookup(key,V,comparator_);
  if(exist){
    buffer_pool_manager_->UnpinPage(leafnode->GetPageId(),false);
    return false;//exist return false
  }
  //else insert it
  else{

    leafnode->Insert(key,value,comparator_);
    //deal with split
    if(leafnode->GetSize()>leafnode->GetMaxSize()){
      LeafPage * newleaf=Split(leafnode);
      InsertIntoParent(leafnode,newleaf->KeyAt(0),newleaf,transaction);
    }
    buffer_pool_manager_->UnpinPage(leafpage->GetPageId(),true);
    return true;
  }
}

/*
 * Split input page and return newly created page.
 * Using template N to represent either internal page or leaf page.
 * User needs to first ask for new page from buffer pool manager(NOTICE: throw
 * an "out of memory" exception if returned value is nullptr), then move half
 * of key & value pairs from input page to newly created page
 */
INDEX_TEMPLATE_ARGUMENTS
template<typename N>
N *BPLUSTREE_TYPE::Split(N *node) {
  //ask for new page from buffer pool manager
  page_id_t newpageid;
  auto*newpage =buffer_pool_manager_->NewPage(newpageid);
  ASSERT(newpage!=nullptr,"out of memory");
//move half of key & value pairs from input page to newly created page
  N*newnode= reinterpret_cast<N  *>(newpage->GetData());
  
  newnode->Init(newpageid,node->GetParentPageId());
  newnode->SetMaxSize(leaf_max_size_);
  node->MoveHalfTo(newnode,buffer_pool_manager_);
  //remember to unpin
  return newnode;
}

/*
 * Insert key & value pair into internal page after split
 * @param   old_node      input page from split() method
 * @param   key
 * @param   new_node      returned page from split() method
 * User needs to first find the parent page of old_node, parent node must be
 * adjusted to take info of new_node into account. Remember to deal with split
 * recursively if necessary.
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::InsertIntoParent(BPlusTreePage *old_node, const KeyType &key, BPlusTreePage *new_node,
                                      Transaction *transaction) {
    //if old node is root
    if(old_node->IsRootPage()){
       //create a new root page
       Page * newrootpage=buffer_pool_manager_->NewPage(root_page_id_);
       ASSERT(newrootpage!=nullptr,"out of memory");
       assert(newrootpage->GetPinCount() == 1);
       InternalPage* newroot=reinterpret_cast<InternalPage *>(newrootpage->GetData());
       
       newroot->Init(root_page_id_,INVALID_PAGE_ID);
       newroot->SetMaxSize(internal_max_size_);
       //insert into new root
       newroot->PopulateNewRoot(old_node->GetPageId(),key,new_node->GetPageId());
       old_node->SetParentPageId(root_page_id_);
       new_node->SetParentPageId(root_page_id_);
       UpdateRootPageId(false);//update rootpage
       buffer_pool_manager_->UnpinPage(newrootpage->GetPageId(),true);
       buffer_pool_manager_->UnpinPage(new_node->GetPageId(),true);
    }
    //if not the root
    else{
      auto *Ppage=buffer_pool_manager_->FetchPage(old_node->GetParentPageId());
    ASSERT(Ppage!=nullptr,"out of memory");
    InternalPage * pnode=reinterpret_cast <InternalPage* >(Ppage->GetData());
    new_node->SetParentPageId(Ppage->GetPageId());
    buffer_pool_manager_->UnpinPage(new_node->GetPageId(),true);
    //insert new_node right after old_node
    
    pnode->InsertNodeAfter(old_node->GetPageId(),key,new_node->GetPageId());
    //if need split recursively
    if(pnode->GetSize()>pnode->GetMaxSize()){
      InternalPage *newInpage=Split(pnode);
      InsertIntoParent(pnode,newInpage->KeyAt(0),newInpage,transaction);
    }
    buffer_pool_manager_->UnpinPage(Ppage->GetPageId(),true);
    }
}

/*****************************************************************************
 * REMOVE
 *****************************************************************************/
/*
 * Delete key & value pair associated with input key
 * If current tree is empty, return immediately.
 * If not, User needs to first find the right leaf page as deletion target, then
 * delete entry from leaf page. Remember to deal with redistribute or merge if
 * necessary.
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::Remove(const KeyType &key, Transaction *transaction) {

  //If current tree is empty, return immediately.
  if(IsEmpty()) return;
  //first find the right leaf page
  Page * deLeafpage=FindLeafPage(key);
  LeafPage *deleaf=reinterpret_cast<LeafPage* >(deLeafpage->GetData());

  //delete entry
  int deletesize=deleaf->RemoveAndDeleteRecord(key,comparator_);

  //deal with redistribute or merge
  if(deletesize<deleaf->GetMinSize()){

    CoalesceOrRedistribute(deleaf,transaction);
  }
  buffer_pool_manager_->UnpinPage(deleaf->GetPageId(),true);
}

/*
 * User needs to first find the sibling of input page. If sibling's size + input
 * page's size > page's max size, then redistribute. Otherwise, merge.
 * Using template N to represent either internal page or leaf page.
 * @return: true means target leaf page should be deleted, false means no
 * deletion happens
 */
INDEX_TEMPLATE_ARGUMENTS
template<typename N>
bool BPLUSTREE_TYPE::CoalesceOrRedistribute(N *node, Transaction *transaction) {
  //if node is root ,adjust it
  if(node->IsRootPage()){
    return AdjustRoot(node);
  }
  //Find sibling
  N * silibnode;
  Page* page=buffer_pool_manager_->FetchPage(node->GetParentPageId());
  InternalPage* Pnode=reinterpret_cast<InternalPage* >(page->GetData());
  int index=Pnode->ValueIndex(node->GetPageId());
  int sbindex;
  if(index==0)
      sbindex=index+1;
  else
      sbindex=index-1;
  auto* page2=buffer_pool_manager_->FetchPage(Pnode->ValueAt(sbindex));
  silibnode= reinterpret_cast<N *>(page2->GetData());
  //Coalesce
  if(node->GetSize()+silibnode->GetSize()<=node->GetMaxSize()){
    if(sbindex==index+1) swap(node,silibnode);
    int removeIndex=Pnode->ValueIndex(node->GetPageId());
    Coalesce(&silibnode,&node,&Pnode,removeIndex,transaction);
    buffer_pool_manager_->UnpinPage(Pnode->GetPageId(),false);
    return true;
  }
  //Redistribute
  else{

    int removeindex=Pnode->ValueIndex(node->GetPageId());

    Redistribute(silibnode,node,removeindex);
    buffer_pool_manager_->UnpinPage(Pnode->GetPageId(),false);
    return false;
  }
}

/*
 * Move all the key & value pairs from one page to its sibling page, and notify
 * buffer pool manager to delete this page. Parent page must be adjusted to
 * take info of deletion into account. Remember to deal with coalesce or
 * redistribute recursively if necessary.
 * Using template N to represent either internal page or leaf page.
 * @param   neighbor_node      sibling page of input "node"
 * @param   node               input from method coalesceOrRedistribute()
 * @param   parent             parent page of input "node"
 * @return  true means parent node should be deleted, false means no deletion happened
 */
INDEX_TEMPLATE_ARGUMENTS
template<typename N>
bool BPLUSTREE_TYPE::Coalesce(N **neighbor_node, N **node,
                              BPlusTreeInternalPage<KeyType, page_id_t, KeyComparator> **parent, int index,
                              Transaction *transaction) {
  //Move all the key & value pairs from one page to its sibling page
  (*node)->MoveAllTo(*neighbor_node,(*parent)->KeyAt(index),buffer_pool_manager_);
 
  //delete this page
  buffer_pool_manager_->UnpinPage((*node)->GetPageId(),true);
  buffer_pool_manager_->DeletePage((*node)->GetPageId());
  buffer_pool_manager_->UnpinPage((*neighbor_node)->GetPageId(),true);
  //Parent page must be adjusted to take info of deletion into account
  (*parent)->Remove(index);

  //because parent is internal page,first key is invalid,so here is <=

  if((*parent)->GetSize()<=(*parent)->GetMinSize())
    return  CoalesceOrRedistribute(*parent,transaction);
  return false;

}

/*
 * Redistribute key & value pairs from one page to its sibling page. If index ==
 * 0, move sibling page's first key & value pair into end of input "node",
 * otherwise move sibling page's last key & value pair into head of input
 * "node".
 * Using template N to represent either internal page or leaf page.
 * @param   neighbor_node      sibling page of input "node"
 * @param   node               input from method coalesceOrRedistribute()
 */
INDEX_TEMPLATE_ARGUMENTS
template<typename N>
void BPLUSTREE_TYPE::Redistribute(N *neighbor_node, N *node, int index) {
   Page * parentpage=buffer_pool_manager_->FetchPage(neighbor_node->GetParentPageId());
   InternalPage * Pnode=reinterpret_cast<InternalPage*>(parentpage->GetData());

  //neighbor_node is before node
    if(index!=0){
       neighbor_node->MoveLastToFrontOf(node,Pnode->KeyAt(index),buffer_pool_manager_);
    }
    //neighbor_node is after node
    else{
      neighbor_node->MoveFirstToEndOf(node,Pnode->KeyAt(index+1),buffer_pool_manager_);
    }
    buffer_pool_manager_->UnpinPage(node->GetPageId(),true);
    buffer_pool_manager_->UnpinPage(neighbor_node->GetPageId(),true);
    buffer_pool_manager_->UnpinPage(Pnode->GetPageId(),false);
}

/*
 * Update root page if necessary
 * NOTE: size of root page can be less than min size and this method is only
 * called within coalesceOrRedistribute() method
 * case 1: when you delete the last element in root page, but root page still
 * has one last child
 * case 2: when you delete the last element in whole b+ tree
 * @return : true means root page should be deleted, false means no deletion
 * happened
 */
INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::AdjustRoot(BPlusTreePage *old_root_node) {
  //delete the last element in whole b+ tree
  if(old_root_node->IsLeafPage()){
    buffer_pool_manager_->UnpinPage(old_root_node->GetPageId(),false);
    buffer_pool_manager_->DeletePage(old_root_node->GetPageId());
    root_page_id_=INVALID_PAGE_ID;
    UpdateRootPageId(false);
    return true;
  }
  //case 1
if(old_root_node->GetSize()==1){
  InternalPage * oldroot=reinterpret_cast<InternalPage*>(old_root_node);
  const page_id_t newRootId =oldroot->RemoveAndReturnOnlyChild();
  root_page_id_=newRootId;
  UpdateRootPageId(false);

  Page* newrootpage=buffer_pool_manager_->FetchPage(root_page_id_);
  InternalPage* newroot=reinterpret_cast<InternalPage*>(newrootpage->GetData());
  newroot->SetParentPageId(INVALID_PAGE_ID);

  buffer_pool_manager_->UnpinPage(root_page_id_,true);
  buffer_pool_manager_->UnpinPage(old_root_node->GetPageId(),true);
  buffer_pool_manager_->DeletePage(old_root_node->GetPageId());
  
}
  return false;
}

/*****************************************************************************
 * INDEX ITERATOR
 *****************************************************************************/
/*
 * Input parameter is void, find the left most leaf page first, then construct
 * index iterator
 * @return : index iterator
 */
INDEX_TEMPLATE_ARGUMENTS
INDEXITERATOR_TYPE BPLUSTREE_TYPE::Begin() {
  KeyType key;
  Page* LMleafpage=FindLeafPage(key,true);
   LeafPage * LMleaf=reinterpret_cast<LeafPage *>(LMleafpage->GetData());
  return INDEXITERATOR_TYPE(0,LMleaf,buffer_pool_manager_);
}

/*
 * Input parameter is low key, find the leaf page that contains the input key
 * first, then construct index iterator
 * @return : index iterator
 */
INDEX_TEMPLATE_ARGUMENTS
INDEXITERATOR_TYPE BPLUSTREE_TYPE::Begin(const KeyType &key) {
   Page* Kleafpage=FindLeafPage(key,false);
    LeafPage * Kleaf=reinterpret_cast<LeafPage *>(Kleafpage->GetData());
   if(Kleaf==nullptr){
     return INDEXITERATOR_TYPE(0,Kleaf,buffer_pool_manager_);
   }
  return INDEXITERATOR_TYPE(Kleaf->KeyIndex(key,comparator_),Kleaf,buffer_pool_manager_);
}

/*
 * Input parameter is void, construct an index iterator representing the end
 * of the key/value pair in the leaf node
 * @return : index iterator
 */
INDEX_TEMPLATE_ARGUMENTS
INDEXITERATOR_TYPE BPLUSTREE_TYPE::End() {
  KeyType key;
   Page* LMleafpage=FindLeafPage(key,true);
   LeafPage * LMleaf=reinterpret_cast<LeafPage *>(LMleafpage->GetData());
  page_id_t PageID;
  //find right most leaf page
  while (LMleaf->GetNextPageId()!=INVALID_PAGE_ID)
  { 
    PageID=LMleaf->GetPageId();
    auto * nextPAGE=buffer_pool_manager_->FetchPage(LMleaf->GetNextPageId());
    buffer_pool_manager_->UnpinPage(PageID,false);
    LMleaf=reinterpret_cast<LeafPage *>(nextPAGE->GetData());
  }
  return INDEXITERATOR_TYPE(LMleaf->GetSize()-1,LMleaf,buffer_pool_manager_);
}

/*****************************************************************************
 * UTILITIES AND DEBUG
 *****************************************************************************/
/*
 * Find leaf page containing particular key, if leftMost flag == true, find
 * the left most leaf page
 * Note: the leaf page is pinned, you need to unpin it after use.
 */
INDEX_TEMPLATE_ARGUMENTS
Page *BPLUSTREE_TYPE::FindLeafPage(const KeyType &key, bool leftMost) {

  if(IsEmpty()) return nullptr;//empty tree,return NULL
  auto * pointer = buffer_pool_manager_->FetchPage(root_page_id_);//获取一个page
  page_id_t cur,next;
  cur=root_page_id_;
  InternalPage *node = reinterpret_cast<InternalPage*>(pointer->GetData());
  while(!node->IsLeafPage()){
    
    if(leftMost)
      next=node->ValueAt(0);
    else
      next=node->Lookup(key,comparator_);
     buffer_pool_manager_->UnpinPage(cur, false);
    cur=next;
    pointer=buffer_pool_manager_->FetchPage(cur);
    node = reinterpret_cast<InternalPage *>(pointer->GetData());//强制类型转换
  }
  return pointer;
}

/*
 * Update/Insert root page id in header page(where page_id = 0, header_page is
 * defined under include/page/header_page.h)
 * Call this method everytime root page id is changed.
 * @parameter: insert_record      default value is false. When set to true,
 * insert a record <index_name, root_page_id> into header page instead of
 * updating it.
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::UpdateRootPageId(int insert_record) {
     IndexRootsPage * rootpage =reinterpret_cast<IndexRootsPage *>(buffer_pool_manager_->FetchPage(INDEX_ROOTS_PAGE_ID));
     if(insert_record){
         rootpage->Insert(index_id_,root_page_id_);
     }
     else{
         rootpage->Update(index_id_,root_page_id_);
     }
     buffer_pool_manager_->UnpinPage(INDEX_ROOTS_PAGE_ID,true);
}
/**
 * This method is used for debug only, You don't need to modify
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::ToGraph(BPlusTreePage *page, BufferPoolManager *bpm, std::ofstream &out) const {

  std::string leaf_prefix("LEAF_");
  std::string internal_prefix("INT_");
  if (page->IsLeafPage()) {
    auto *leaf = reinterpret_cast<LeafPage *>(page);
    // Print node name
    out << leaf_prefix << leaf->GetPageId();
    // Print node properties
    out << "[shape=plain color=green ";
    // Print data of the node
    out << "label=<<TABLE BORDER=\"0\" CELLBORDER=\"1\" CELLSPACING=\"0\" CELLPADDING=\"4\">\n";
    // Print data
    out << "<TR><TD COLSPAN=\"" << leaf->GetSize() << "\">P=" << leaf->GetPageId()
        << ",Parent=" << leaf->GetParentPageId() << "</TD></TR>\n";
    out << "<TR><TD COLSPAN=\"" << leaf->GetSize() << "\">"
        << "max_size=" << leaf->GetMaxSize() << ",min_size=" << leaf->GetMinSize() << ",size=" << leaf->GetSize()
        << "</TD></TR>\n";
    out << "<TR>";
    for (int i = 0; i < leaf->GetSize(); i++) {
      out << "<TD>" << leaf->KeyAt(i) << "</TD>\n";
    }
    out << "</TR>";
    // Print table end
    out << "</TABLE>>];\n";
    // Print Leaf node link if there is a next page
    if (leaf->GetNextPageId() != INVALID_PAGE_ID) {
      out << leaf_prefix << leaf->GetPageId() << " -> " << leaf_prefix << leaf->GetNextPageId() << ";\n";
      out << "{rank=same " << leaf_prefix << leaf->GetPageId() << " " << leaf_prefix << leaf->GetNextPageId()
          << "};\n";
    }
    // Print parent links if there is a parent
    if (leaf->GetParentPageId() != INVALID_PAGE_ID) {
      out << internal_prefix << leaf->GetParentPageId() << ":p" << leaf->GetPageId() << " -> " << leaf_prefix
          << leaf->GetPageId() << ";\n";
    }
  } else {
    auto *inner = reinterpret_cast<InternalPage *>(page);
    // Print node name
    out << internal_prefix << inner->GetPageId();
    // Print node properties
    out << "[shape=plain color=pink ";  // why not?
    // Print data of the node
    out << "label=<<TABLE BORDER=\"0\" CELLBORDER=\"1\" CELLSPACING=\"0\" CELLPADDING=\"4\">\n";
    // Print data
    out << "<TR><TD COLSPAN=\"" << inner->GetSize() << "\">P=" << inner->GetPageId()
        << ",Parent=" << inner->GetParentPageId() << "</TD></TR>\n";
    out << "<TR><TD COLSPAN=\"" << inner->GetSize() << "\">"
        << "max_size=" << inner->GetMaxSize() << ",min_size=" << inner->GetMinSize() << ",size=" << inner->GetSize()
        << "</TD></TR>\n";
    out << "<TR>";
    for (int i = 0; i < inner->GetSize(); i++) {
      out << "<TD PORT=\"p" << inner->ValueAt(i) << "\">";
      if (i > 0) {
        out << inner->KeyAt(i);
      } else {
        out << " ";
      }
      out << "</TD>\n";
    }
    out << "</TR>";
    // Print table end
    out << "</TABLE>>];\n";
    // Print Parent link
    if (inner->GetParentPageId() != INVALID_PAGE_ID) {
      out << internal_prefix << inner->GetParentPageId() << ":p" << inner->GetPageId() << " -> "
          << internal_prefix
          << inner->GetPageId() << ";\n";
    }
    // Print leaves
    for (int i = 0; i < inner->GetSize(); i++) {
      auto child_page = reinterpret_cast<BPlusTreePage *>(bpm->FetchPage(inner->ValueAt(i))->GetData());
      ToGraph(child_page, bpm, out);
      if (i > 0) {
        auto sibling_page = reinterpret_cast<BPlusTreePage *>(bpm->FetchPage(inner->ValueAt(i - 1))->GetData());
        if (!sibling_page->IsLeafPage() && !child_page->IsLeafPage()) {
          out << "{rank=same " << internal_prefix << sibling_page->GetPageId() << " " << internal_prefix
              << child_page->GetPageId() << "};\n";
        }
        bpm->UnpinPage(sibling_page->GetPageId(), false);
      }
    }
  }
  bpm->UnpinPage(page->GetPageId(), false);
}

/**
 * This function is for debug only, you don't need to modify
 */
INDEX_TEMPLATE_ARGUMENTS
void BPLUSTREE_TYPE::ToString(BPlusTreePage *page, BufferPoolManager *bpm) const {
  if (page->IsLeafPage()) {
    auto *leaf = reinterpret_cast<LeafPage *>(page);
    std::cout << "Leaf Page: " << leaf->GetPageId() << " parent: " << leaf->GetParentPageId()
              << " next: " << leaf->GetNextPageId() << std::endl;
    for (int i = 0; i < leaf->GetSize(); i++) {
      std::cout << leaf->KeyAt(i) << ",";
    }
    std::cout << std::endl;
    std::cout << std::endl;
  } else {
    auto *internal = reinterpret_cast<InternalPage *>(page);
    std::cout << "Internal Page: " << internal->GetPageId() << " parent: " << internal->GetParentPageId()
              << std::endl;
    for (int i = 0; i < internal->GetSize(); i++) {
      std::cout << internal->KeyAt(i) << ": " << internal->ValueAt(i) << ",";
    }
    std::cout << std::endl;
    std::cout << std::endl;
    for (int i = 0; i < internal->GetSize(); i++) {
      ToString(reinterpret_cast<BPlusTreePage *>(bpm->FetchPage(internal->ValueAt(i))->GetData()), bpm);
      bpm->UnpinPage(internal->ValueAt(i), false);
    }
  }
}

INDEX_TEMPLATE_ARGUMENTS
bool BPLUSTREE_TYPE::Check() {
  bool all_unpinned = buffer_pool_manager_->CheckAllUnpinned();
  if (!all_unpinned) {
    LOG(ERROR) << "problem in page unpin" << endl;
  }
  return all_unpinned;
}

template
class BPlusTree<int, int, BasicComparator<int>>;

template
class BPlusTree<GenericKey<4>, RowId, GenericComparator<4>>;

template
class BPlusTree<GenericKey<8>, RowId, GenericComparator<8>>;

template
class BPlusTree<GenericKey<16>, RowId, GenericComparator<16>>;

template
class BPlusTree<GenericKey<32>, RowId, GenericComparator<32>>;

template
class BPlusTree<GenericKey<64>, RowId, GenericComparator<64>>;
