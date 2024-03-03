#include "catalog/catalog.h"

CatalogMeta::CatalogMeta(const std::map<table_id_t, page_id_t> &table_meta_pages, const std::map<index_id_t, page_id_t>& index_meta_pages)
  : table_meta_pages_(table_meta_pages), index_meta_pages_(index_meta_pages)
  {}

void CatalogMeta::SerializeTo(char *buf) const {
  // ASSERT(false, "Not Implemented yet");
  //全都存进去
  uint32_t offset = 0;
  MACH_WRITE_UINT32(buf + offset, CATALOG_METADATA_MAGIC_NUM);
  offset += sizeof(uint32_t);

  uint32_t table_map_size = table_meta_pages_.size();
  MACH_WRITE_UINT32(buf + offset, table_map_size);
  offset += sizeof(uint32_t);
  auto p = table_meta_pages_.begin();
  for(; p != table_meta_pages_.end(); p++)
  {
    MACH_WRITE_UINT32(buf + offset, p->first);
    offset += sizeof(uint32_t);
    MACH_WRITE_INT32(buf + offset, p->second);
    offset += sizeof(int32_t);
  }

  uint32_t index_map_size = index_meta_pages_.size();
  MACH_WRITE_UINT32(buf + offset, index_map_size);
  offset += sizeof(uint32_t);
  p = index_meta_pages_.begin();
  for(; p != index_meta_pages_.end(); p++)
  {
    MACH_WRITE_UINT32(buf + offset, p->first);
    offset += sizeof(uint32_t);
    MACH_WRITE_INT32(buf + offset, p->second);
    offset += sizeof(int32_t);
  }
  //return offset;
}

uint32_t CatalogMeta::GetSerializedSize() const {
  // ASSERT(false, "Not Implemented yet");
  return sizeof(uint32_t) * (3 + table_meta_pages_.size() + index_meta_pages_.size()) + sizeof(int32_t) * (table_meta_pages_.size() + index_meta_pages_.size());
}

CatalogMeta *CatalogMeta::DeserializeFrom(char *buf, MemHeap *heap) {
  // ASSERT(false, "Not Implemented yet");
  /* deserialize from buf */
  uint32_t offset = 0;
  uint32_t magic_check = MACH_READ_UINT32(buf + offset);
  //ASSERT(magic_check == CATALOG_METADATA_MAGIC_NUM, "catalogmeta deserilize error!");
  if(magic_check != CATALOG_METADATA_MAGIC_NUM) std::cout << "error";

  offset += sizeof(uint32_t);

  uint32_t table_map_size = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  std::map<table_id_t, page_id_t> table_meta_pages;
  table_id_t table_id = 0;
  page_id_t page_id = 0;
  for(uint32_t i = 0; i < table_map_size; i++)
  {
    table_id = MACH_READ_UINT32(buf + offset);
    offset += sizeof(uint32_t);
    page_id = MACH_READ_INT32(buf + offset);
    offset += sizeof(uint32_t);
    table_meta_pages[table_id] = page_id;
  }

  uint32_t index_map_size = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  std::map<index_id_t, page_id_t> index_meta_pages;
  index_id_t index_id = 0;
  for(uint32_t i = 0; i < index_map_size; i++)
  {
    index_id = MACH_READ_UINT32(buf + offset);
    offset += sizeof(uint32_t);
    page_id = MACH_READ_INT32(buf + offset);
    offset += sizeof(uint32_t);
    index_meta_pages[index_id] = page_id;
  }

  CatalogMeta* catalog_meta = ALLOC_P(heap, CatalogMeta)(table_meta_pages, index_meta_pages);
  return catalog_meta;
}

CatalogMeta::CatalogMeta() {}


CatalogManager::CatalogManager(BufferPoolManager *buffer_pool_manager, LockManager *lock_manager,
                               LogManager *log_manager, bool init)
        : buffer_pool_manager_(buffer_pool_manager), lock_manager_(lock_manager),
          log_manager_(log_manager), heap_(new SimpleMemHeap()) {
  // ASSERT(false, "Not Implemented yet");
  if(init)
    catalog_meta_ = CatalogMeta::NewInstance(heap_);
  //非初次创建时，相当于打开之前使用过的数据库，需要通过反序列化加载好之前存储的所有的表和索引信息
  else
  {
    auto metapage = buffer_pool_manager->FetchPage(CATALOG_META_PAGE_ID);
    catalog_meta_ = CatalogMeta::DeserializeFrom(metapage->GetData(), heap_);
    buffer_pool_manager->UnpinPage(CATALOG_META_PAGE_ID, false);
    //利用元信息将tableinfo和indexinfo load到CatalogManager中
    auto table_iter = catalog_meta_->table_meta_pages_.begin();
    auto index_iter = catalog_meta_->index_meta_pages_.begin();

    for(; table_iter != catalog_meta_->table_meta_pages_.end(); table_iter++)
    {
      LoadTable(table_iter->first, table_iter->second);
    }

    for(; index_iter != catalog_meta_->index_meta_pages_.end(); index_iter++)
    {
      LoadIndex(index_iter->first, index_iter->second);
    }

  }
}

CatalogManager::~CatalogManager() {
  FlushCatalogMetaPage();
  delete heap_;
}

//结果输出到参数table_info，输入的应该是个nullptr
dberr_t CatalogManager::CreateTable(const string &table_name, TableSchema *schema,
                                    Transaction *txn, TableInfo *&table_info) {
  // ASSERT(false, "Not Implemented yet");
  //若表已经存在，则建表失败
  if(table_names_.count(table_name))
  {
    return DB_TABLE_ALREADY_EXIST;
  }

  table_info = TableInfo::Create(heap_);

  //需要table_meta和table_heap
  //创建table_heap，让它自己去申请newpage，获得first_page_id
  auto* table_heap = TableHeap::Create(buffer_pool_manager_, schema, txn, log_manager_, lock_manager_, table_info->GetMemHeap());

  //table meta data
  const auto table_id = catalog_meta_->GetNextTableId();//next_table_id_.fetch_add(1);
  page_id_t root_page_id = table_heap->GetFirstPageId();
  auto* table_meta = TableMetadata::Create(table_id, table_name, root_page_id, schema, table_info->GetMemHeap());

  table_info->Init(table_meta, table_heap);

  //将信息更新到catalog中
  tables_.emplace(table_id, table_info);
  table_names_.emplace(table_name, table_id);
  index_names_.emplace(table_name, std::unordered_map<std::string, index_id_t>{});

  //为新表申请存元数据的页，并更新catalogmetadata
  page_id_t table_page_id;
  auto table_page = buffer_pool_manager_->NewPage(table_page_id);
  table_meta->SerializeTo(table_page->GetData());
  buffer_pool_manager_->UnpinPage(table_page_id, true);

  catalog_meta_->table_meta_pages_.emplace(table_id, table_page_id);
  return DB_SUCCESS;
}

dberr_t CatalogManager::GetTable(const string &table_name, TableInfo *&table_info) {
  // ASSERT(false, "Not Implemented yet");
  auto table_id_iter = table_names_.find(table_name);
  if(table_id_iter == table_names_.end())
  {
    return DB_TABLE_NOT_EXIST;
  }

  auto table_info_iter = tables_.find(table_id_iter->second);
  ASSERT(table_info_iter != tables_.end(), "Error, table_information inconsistent!");

  table_info = table_info_iter->second;
  return DB_SUCCESS;
}

dberr_t CatalogManager::GetTables(vector<TableInfo *> &tables) const {
  // ASSERT(false, "Not Implemented yet");
  auto table_iter = tables_.begin();
  for(; table_iter != tables_.end(); table_iter++)
  {
    tables.push_back(table_iter->second);
  }

  return DB_SUCCESS;
}

dberr_t CatalogManager::CreateIndex(const std::string &table_name, const string &index_name,
                                    const std::vector<std::string> &index_keys, Transaction *txn,
                                    IndexInfo *&index_info) {
  // ASSERT(false, "Not Implemented yet");
  //先检查是否存在此表
  TableInfo* table_info = nullptr;
  dberr_t errinf = GetTable(table_name, table_info);
  if(errinf == DB_TABLE_NOT_EXIST)
    return DB_TABLE_NOT_EXIST;

  //检查索引是否已存在，fix
  auto index_name_iter = index_names_.find(table_name);

  auto& name_id = index_name_iter->second;
  
  if(name_id.count(index_name))
  {
    return DB_INDEX_ALREADY_EXIST;
  } 


  std::vector<uint32_t> key_map;
  //比较列是否都存在, 并获取key_map
  std::vector<Column *> columns = table_info->GetSchema()->GetColumns();
  uint32_t index_key_num = index_keys.size();
  uint32_t columns_num = columns.size();
  for(uint32_t i = 0; i < index_key_num; i++)
  {
    for(uint32_t j = 0; j < columns_num; j++)
    {
      if(columns[j]->GetName() == index_keys[i])
      {
        key_map.emplace_back(j);
        break;
      } 
      else if(j == columns_num - 1) return DB_COLUMN_NAME_NOT_EXIST;
    }
  }

  //存在表且存在列，开始建立索引
  auto* IndexInfo = IndexInfo::Create(heap_);

  //需要metadata和tableinfo
  const auto index_id = catalog_meta_->GetNextIndexId();//next_index_id_.fetch_add(1);
  table_id_t table_id = table_info->GetTableId();
  auto* index_meta = IndexMetadata::Create(index_id, index_name, table_id, key_map, IndexInfo->GetMemHeap());

  IndexInfo->Init(index_meta, table_info, buffer_pool_manager_);
  index_info = IndexInfo;
  //将信息更新到catalog中
  name_id.emplace(index_name, index_id);
  indexes_.emplace(index_id, IndexInfo);  //fix，要存的是IndexInfo

  //为新索引申请存元数据的页，并更新catalogmetadata
  page_id_t index_page_id;

  auto index_page = buffer_pool_manager_->NewPage(index_page_id);
  index_meta->SerializeTo(index_page->GetData());

  buffer_pool_manager_->UnpinPage(index_page_id, true);

  //需要序列化

  catalog_meta_->index_meta_pages_.emplace(index_id, index_page_id);

  return DB_SUCCESS;
}

dberr_t CatalogManager::GetIndex(const std::string &table_name, const std::string &index_name,
                                 IndexInfo *&index_info) const {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table信息不一致!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;

  auto index_id_iter = name_id.find(index_name);
  if (index_id_iter == name_id.end()) {
    return DB_INDEX_NOT_FOUND;
  }

  auto indexinfo_iter = indexes_.find(index_id_iter->second);
  ASSERT((indexinfo_iter != indexes_.end()), "Index信息不一致");

  index_info = indexinfo_iter->second;

  return DB_SUCCESS;
}

/**
 * @brief 获得表上的所有索引
 */
dberr_t CatalogManager::GetTableIndexes(const std::string &table_name, std::vector<IndexInfo *> &indexes) const {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table信息不一致!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;

  auto index_id_iter = name_id.begin();
  for(; index_id_iter != name_id.end(); index_id_iter++)
  {
    auto indexinfo_iter = indexes_.find(index_id_iter->second);
    ASSERT((indexinfo_iter != indexes_.end()), "Index信息不一致");

    indexes.push_back(indexinfo_iter->second);
  }

  return DB_SUCCESS;
}

//tabelinfo的空间来自catalogmanager的heap，当manager析构时其空间也会被释放，所以删表时应该不需要手动释放
dberr_t CatalogManager::DropTable(const string &table_name) {
  // ASSERT(false, "Not Implemented yet");
  if(table_names_.count(table_name) == 0)
  {
    return DB_TABLE_NOT_EXIST;
  }

  table_id_t table_id = table_names_[table_name];

  //删除堆表中的数据页
  TableInfo* table_inf = nullptr;
  GetTable(table_id, table_inf);
  assert(table_inf != nullptr);
  table_inf->GetTableHeap()->FreeHeap();
  
  //先删除索引，再删除表
  //清除表上的索引，fix：还要将indexes_中的索引删除，所以要先拿到索引id
  auto &name_id = index_names_[table_name];
  auto p = name_id.begin();
  for(; p != name_id.end(); p++)
  {
    indexes_.erase(p->second);
  }
  
  index_names_.erase(table_name);

  //清除表
  table_names_.erase(table_name);
  tables_.erase(table_id);
  
  //释放页，更新catalog元数据
  buffer_pool_manager_->DeletePage(catalog_meta_->table_meta_pages_[table_id]);
  catalog_meta_->table_meta_pages_.erase(table_id);
  
  return DB_SUCCESS;
}

dberr_t CatalogManager::DropIndex(const string &table_name, const string &index_name) {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table信息不一致!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;
  auto index_id_iter = name_id.find(index_name);
  if (index_id_iter == name_id.end()) {
    return DB_INDEX_NOT_FOUND;
  }

  index_id_t index_id = index_id_iter->second;

  //清除
  name_id.erase(index_name);
  indexes_.erase(index_id);

  // cout << "test index drop" << index_name << endl;

  //释放页
  buffer_pool_manager_->DeletePage(catalog_meta_->index_meta_pages_[index_id]);
  catalog_meta_->index_meta_pages_.erase(index_id);

  return DB_SUCCESS;

}

dberr_t CatalogManager::FlushCatalogMetaPage() const {
  // ASSERT(false, "Not Implemented yet");
  auto metapage = buffer_pool_manager_->FetchPage(CATALOG_META_PAGE_ID);
  catalog_meta_->SerializeTo(metapage->GetData());
  buffer_pool_manager_->UnpinPage(CATALOG_META_PAGE_ID, true);
  return DB_SUCCESS;
}

dberr_t CatalogManager::LoadTable(const table_id_t table_id, const page_id_t page_id) {
  // ASSERT(false, "Not Implemented yet");
  if(tables_.count(table_id))
    return DB_TABLE_ALREADY_EXIST;

  auto* table_info = TableInfo::Create(heap_);

  //fetch失败的处理
  auto table_page = buffer_pool_manager_->FetchPage(page_id);

  TableMetadata* table_meta = nullptr;
  TableMetadata::DeserializeFrom(table_page->GetData(), table_meta, table_info->GetMemHeap());
  buffer_pool_manager_->UnpinPage(page_id, false);

  TableHeap* table_heap = nullptr;
  if(table_meta != nullptr)
  {
    table_heap = TableHeap::Create(buffer_pool_manager_, table_meta->GetFirstPageId(), table_meta->GetSchema(),log_manager_, lock_manager_, table_info->GetMemHeap());
  }

  table_info->Init(table_meta, table_heap);

  //将信息更新到catalog中
  tables_.emplace(table_id, table_info);
  table_names_.emplace(table_meta->GetTableName(), table_id);
  index_names_.emplace(table_meta->GetTableName(), std::unordered_map<std::string, index_id_t>{});

  return DB_SUCCESS;
}

dberr_t CatalogManager::LoadIndex(const index_id_t index_id, const page_id_t page_id) {
  // ASSERT(false, "Not Implemented yet");
  //检查索引是否已存在
  if(indexes_.count(index_id))
    return DB_INDEX_ALREADY_EXIST;

  auto* index_info = IndexInfo::Create(heap_);
  
  auto index_page = buffer_pool_manager_->FetchPage(page_id);

  IndexMetadata* index_meta = nullptr;
  IndexMetadata::DeserializeFrom(index_page->GetData(), index_meta, index_info->GetMemHeap());

  buffer_pool_manager_->UnpinPage(page_id, false);

  //根据table_id找到tableinfo
  TableInfo* table_info = nullptr;
  if(GetTable(index_meta->GetTableId(), table_info) == DB_TABLE_NOT_EXIST)
  {
    return DB_TABLE_NOT_EXIST;
  }

  index_info->Init(index_meta, table_info, buffer_pool_manager_);

  //将信息更新到catalog中
  auto& name_id = index_names_.find(table_info->GetTableName())->second;

  name_id.emplace(index_meta->GetIndexName(), index_id);
  
  indexes_.emplace(index_id, index_info);
  return DB_SUCCESS;
}

dberr_t CatalogManager::GetTable(const table_id_t table_id, TableInfo *&table_info) {
  // ASSERT(false, "Not Implemented yet");
  auto table_iter = tables_.find(table_id);
  if(table_iter == tables_.end())
  {
    return DB_TABLE_NOT_EXIST;
  }

  table_info = table_iter->second;
  return DB_SUCCESS;
}