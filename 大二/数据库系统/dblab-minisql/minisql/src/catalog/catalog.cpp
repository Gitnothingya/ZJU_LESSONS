#include "catalog/catalog.h"

CatalogMeta::CatalogMeta(const std::map<table_id_t, page_id_t> &table_meta_pages, const std::map<index_id_t, page_id_t>& index_meta_pages)
  : table_meta_pages_(table_meta_pages), index_meta_pages_(index_meta_pages)
  {}

void CatalogMeta::SerializeTo(char *buf) const {
  // ASSERT(false, "Not Implemented yet");
  //ȫ�����ȥ
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
  //�ǳ��δ���ʱ���൱�ڴ�֮ǰʹ�ù������ݿ⣬��Ҫͨ�������л����غ�֮ǰ�洢�����еı��������Ϣ
  else
  {
    auto metapage = buffer_pool_manager->FetchPage(CATALOG_META_PAGE_ID);
    catalog_meta_ = CatalogMeta::DeserializeFrom(metapage->GetData(), heap_);
    buffer_pool_manager->UnpinPage(CATALOG_META_PAGE_ID, false);
    //����Ԫ��Ϣ��tableinfo��indexinfo load��CatalogManager��
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

//������������table_info�������Ӧ���Ǹ�nullptr
dberr_t CatalogManager::CreateTable(const string &table_name, TableSchema *schema,
                                    Transaction *txn, TableInfo *&table_info) {
  // ASSERT(false, "Not Implemented yet");
  //�����Ѿ����ڣ��򽨱�ʧ��
  if(table_names_.count(table_name))
  {
    return DB_TABLE_ALREADY_EXIST;
  }

  table_info = TableInfo::Create(heap_);

  //��Ҫtable_meta��table_heap
  //����table_heap�������Լ�ȥ����newpage�����first_page_id
  auto* table_heap = TableHeap::Create(buffer_pool_manager_, schema, txn, log_manager_, lock_manager_, table_info->GetMemHeap());

  //table meta data
  const auto table_id = catalog_meta_->GetNextTableId();//next_table_id_.fetch_add(1);
  page_id_t root_page_id = table_heap->GetFirstPageId();
  auto* table_meta = TableMetadata::Create(table_id, table_name, root_page_id, schema, table_info->GetMemHeap());

  table_info->Init(table_meta, table_heap);

  //����Ϣ���µ�catalog��
  tables_.emplace(table_id, table_info);
  table_names_.emplace(table_name, table_id);
  index_names_.emplace(table_name, std::unordered_map<std::string, index_id_t>{});

  //Ϊ�±������Ԫ���ݵ�ҳ��������catalogmetadata
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
  //�ȼ���Ƿ���ڴ˱�
  TableInfo* table_info = nullptr;
  dberr_t errinf = GetTable(table_name, table_info);
  if(errinf == DB_TABLE_NOT_EXIST)
    return DB_TABLE_NOT_EXIST;

  //��������Ƿ��Ѵ��ڣ�fix
  auto index_name_iter = index_names_.find(table_name);

  auto& name_id = index_name_iter->second;
  
  if(name_id.count(index_name))
  {
    return DB_INDEX_ALREADY_EXIST;
  } 


  std::vector<uint32_t> key_map;
  //�Ƚ����Ƿ񶼴���, ����ȡkey_map
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

  //���ڱ��Ҵ����У���ʼ��������
  auto* IndexInfo = IndexInfo::Create(heap_);

  //��Ҫmetadata��tableinfo
  const auto index_id = catalog_meta_->GetNextIndexId();//next_index_id_.fetch_add(1);
  table_id_t table_id = table_info->GetTableId();
  auto* index_meta = IndexMetadata::Create(index_id, index_name, table_id, key_map, IndexInfo->GetMemHeap());

  IndexInfo->Init(index_meta, table_info, buffer_pool_manager_);
  index_info = IndexInfo;
  //����Ϣ���µ�catalog��
  name_id.emplace(index_name, index_id);
  indexes_.emplace(index_id, IndexInfo);  //fix��Ҫ�����IndexInfo

  //Ϊ�����������Ԫ���ݵ�ҳ��������catalogmetadata
  page_id_t index_page_id;

  auto index_page = buffer_pool_manager_->NewPage(index_page_id);
  index_meta->SerializeTo(index_page->GetData());

  buffer_pool_manager_->UnpinPage(index_page_id, true);

  //��Ҫ���л�

  catalog_meta_->index_meta_pages_.emplace(index_id, index_page_id);

  return DB_SUCCESS;
}

dberr_t CatalogManager::GetIndex(const std::string &table_name, const std::string &index_name,
                                 IndexInfo *&index_info) const {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table��Ϣ��һ��!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;

  auto index_id_iter = name_id.find(index_name);
  if (index_id_iter == name_id.end()) {
    return DB_INDEX_NOT_FOUND;
  }

  auto indexinfo_iter = indexes_.find(index_id_iter->second);
  ASSERT((indexinfo_iter != indexes_.end()), "Index��Ϣ��һ��");

  index_info = indexinfo_iter->second;

  return DB_SUCCESS;
}

/**
 * @brief ��ñ��ϵ���������
 */
dberr_t CatalogManager::GetTableIndexes(const std::string &table_name, std::vector<IndexInfo *> &indexes) const {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table��Ϣ��һ��!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;

  auto index_id_iter = name_id.begin();
  for(; index_id_iter != name_id.end(); index_id_iter++)
  {
    auto indexinfo_iter = indexes_.find(index_id_iter->second);
    ASSERT((indexinfo_iter != indexes_.end()), "Index��Ϣ��һ��");

    indexes.push_back(indexinfo_iter->second);
  }

  return DB_SUCCESS;
}

//tabelinfo�Ŀռ�����catalogmanager��heap����manager����ʱ��ռ�Ҳ�ᱻ�ͷţ�����ɾ��ʱӦ�ò���Ҫ�ֶ��ͷ�
dberr_t CatalogManager::DropTable(const string &table_name) {
  // ASSERT(false, "Not Implemented yet");
  if(table_names_.count(table_name) == 0)
  {
    return DB_TABLE_NOT_EXIST;
  }

  table_id_t table_id = table_names_[table_name];

  //ɾ���ѱ��е�����ҳ
  TableInfo* table_inf = nullptr;
  GetTable(table_id, table_inf);
  assert(table_inf != nullptr);
  table_inf->GetTableHeap()->FreeHeap();
  
  //��ɾ����������ɾ����
  //������ϵ�������fix����Ҫ��indexes_�е�����ɾ��������Ҫ���õ�����id
  auto &name_id = index_names_[table_name];
  auto p = name_id.begin();
  for(; p != name_id.end(); p++)
  {
    indexes_.erase(p->second);
  }
  
  index_names_.erase(table_name);

  //�����
  table_names_.erase(table_name);
  tables_.erase(table_id);
  
  //�ͷ�ҳ������catalogԪ����
  buffer_pool_manager_->DeletePage(catalog_meta_->table_meta_pages_[table_id]);
  catalog_meta_->table_meta_pages_.erase(table_id);
  
  return DB_SUCCESS;
}

dberr_t CatalogManager::DropIndex(const string &table_name, const string &index_name) {
  // ASSERT(false, "Not Implemented yet");
  auto index_name_iter = index_names_.find(table_name);
  if(index_name_iter == index_names_.end()) {
    ASSERT((table_names_.find(table_name) == table_names_.end()), "error, table��Ϣ��һ��!");
    return DB_TABLE_NOT_EXIST;
  }

  auto &name_id = index_name_iter->second;
  auto index_id_iter = name_id.find(index_name);
  if (index_id_iter == name_id.end()) {
    return DB_INDEX_NOT_FOUND;
  }

  index_id_t index_id = index_id_iter->second;

  //���
  name_id.erase(index_name);
  indexes_.erase(index_id);

  // cout << "test index drop" << index_name << endl;

  //�ͷ�ҳ
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

  //fetchʧ�ܵĴ���
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

  //����Ϣ���µ�catalog��
  tables_.emplace(table_id, table_info);
  table_names_.emplace(table_meta->GetTableName(), table_id);
  index_names_.emplace(table_meta->GetTableName(), std::unordered_map<std::string, index_id_t>{});

  return DB_SUCCESS;
}

dberr_t CatalogManager::LoadIndex(const index_id_t index_id, const page_id_t page_id) {
  // ASSERT(false, "Not Implemented yet");
  //��������Ƿ��Ѵ���
  if(indexes_.count(index_id))
    return DB_INDEX_ALREADY_EXIST;

  auto* index_info = IndexInfo::Create(heap_);
  
  auto index_page = buffer_pool_manager_->FetchPage(page_id);

  IndexMetadata* index_meta = nullptr;
  IndexMetadata::DeserializeFrom(index_page->GetData(), index_meta, index_info->GetMemHeap());

  buffer_pool_manager_->UnpinPage(page_id, false);

  //����table_id�ҵ�tableinfo
  TableInfo* table_info = nullptr;
  if(GetTable(index_meta->GetTableId(), table_info) == DB_TABLE_NOT_EXIST)
  {
    return DB_TABLE_NOT_EXIST;
  }

  index_info->Init(index_meta, table_info, buffer_pool_manager_);

  //����Ϣ���µ�catalog��
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