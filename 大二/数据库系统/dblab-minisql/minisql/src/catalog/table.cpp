#include "catalog/table.h"

uint32_t TableMetadata::SerializeTo(char *buf) const {
  //全都存进去
  uint32_t offset = 0;
  MACH_WRITE_UINT32(buf + offset, TABLE_METADATA_MAGIC_NUM);
  offset += sizeof(uint32_t);
  MACH_WRITE_UINT32(buf + offset, table_id_);
  offset += sizeof(uint32_t);
  //存表名称的长度
  MACH_WRITE_UINT32(buf + offset, table_name_.length()); 
  offset += sizeof(uint32_t);
  MACH_WRITE_STRING(buf + offset, table_name_);
  offset += table_name_.length();
  MACH_WRITE_UINT32(buf + offset, root_page_id_);
  offset += sizeof(uint32_t);
  offset += schema_->SerializeTo(buf + offset);

  return offset;
}

uint32_t TableMetadata::GetSerializedSize() const {
  return sizeof(uint32_t) * 4 + table_name_.length() + schema_->GetSerializedSize();
}

/**
 * @param heap Memory heap passed by TableInfo
 */
uint32_t TableMetadata::DeserializeFrom(char *buf, TableMetadata *&table_meta, MemHeap *heap) {
  
  if (table_meta != nullptr) {
    std::cout<< "Pointer to table_meta is not null in table_meta deserialize." << std::endl;
  }
  /* deserialize from buf */
  uint32_t offset = 0;
  uint32_t magic_check = MACH_READ_UINT32(buf + offset);
  ASSERT(magic_check == TABLE_METADATA_MAGIC_NUM, "tablemetadata deserialize error!");

  offset += sizeof(uint32_t);

  uint32_t table_id = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);

  uint32_t table_name_len = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  char name[table_name_len+1];
  memset(name, 0, table_name_len+1);
  memcpy(name, buf + offset, table_name_len);
  std::string table_name(name);
  offset += table_name_len;

  uint32_t root_page_id = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);

  Schema* schema = nullptr;
  offset += Schema::DeserializeFrom(buf + offset, schema, heap);  //用heap提供schema反序列化所需的存储空间

  table_meta = ALLOC_P(heap, TableMetadata)(table_id, table_name, root_page_id, schema);
  return offset;
}

/**
 * Only called by create table
 *
 * @param heap Memory heap passed by TableInfo
 */
TableMetadata *TableMetadata::Create(table_id_t table_id, std::string table_name,
                                     page_id_t root_page_id, TableSchema *schema, MemHeap *heap) {
  // allocate space for table metadata
  void *buf = heap->Allocate(sizeof(TableMetadata));
  return new(buf)TableMetadata(table_id, table_name, root_page_id, schema);
}

TableMetadata::TableMetadata(table_id_t table_id, std::string table_name, page_id_t root_page_id, TableSchema *schema)
        : table_id_(table_id), table_name_(table_name), root_page_id_(root_page_id), schema_(schema) {}
