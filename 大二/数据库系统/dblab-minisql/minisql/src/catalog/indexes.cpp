#include "catalog/indexes.h"

IndexMetadata *IndexMetadata::Create(const index_id_t index_id, const string &index_name,
                                     const table_id_t table_id, const vector<uint32_t> &key_map,
                                     MemHeap *heap) {
  void *buf = heap->Allocate(sizeof(IndexMetadata));
  return new(buf)IndexMetadata(index_id, index_name, table_id, key_map);
}

uint32_t IndexMetadata::SerializeTo(char *buf) const {
  //全都存进去
  uint32_t offset = 0;
  MACH_WRITE_UINT32(buf + offset, INDEX_METADATA_MAGIC_NUM);
  offset += sizeof(uint32_t);
  MACH_WRITE_UINT32(buf + offset, index_id_);
  offset += sizeof(uint32_t);
  //存索引名称的长度
  MACH_WRITE_UINT32(buf + offset, index_name_.length());
  
  offset += sizeof(uint32_t);
  MACH_WRITE_STRING(buf + offset, index_name_);
  offset += index_name_.length();
  MACH_WRITE_UINT32(buf + offset, table_id_);
  offset += sizeof(uint32_t);
  //存mapping的大小
  uint32_t map_size = key_map_.size();
  MACH_WRITE_UINT32(buf + offset, map_size); 
  offset += sizeof(uint32_t);
  for(uint32_t i = 0; i < map_size; i++)
  {
    MACH_WRITE_UINT32(buf + offset, key_map_[i]); 
    offset += sizeof(uint32_t);
  }
  return offset;
}

uint32_t IndexMetadata::GetSerializedSize() const {
  return sizeof(uint32_t) * (5 + key_map_.size()) + index_name_.length();
}

uint32_t IndexMetadata::DeserializeFrom(char *buf, IndexMetadata *&index_meta, MemHeap *heap) {
  if (index_meta != nullptr) {
    std::cout<< "Pointer to index_meta is not null in index_meta deserialize." << std::endl;
  }
  /* deserialize from buf */
  uint32_t offset = 0;
  uint32_t magic_check = MACH_READ_UINT32(buf + offset);
  ASSERT(magic_check == INDEX_METADATA_MAGIC_NUM, "indexmetadata deserialize error!");

  offset += sizeof(uint32_t);

  uint32_t index_id = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);

  uint32_t index_name_len = MACH_READ_UINT32(buf + offset);
  
  offset += sizeof(uint32_t);
  
  char name[index_name_len+1];
  memset(name,0,index_name_len+1);
  memcpy(name, buf + offset, index_name_len);
  std::string index_name(name);
  
  offset += index_name_len;

  uint32_t table_id = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);

  uint32_t map_size = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  std::vector<uint32_t> key_map(map_size);
  for(uint32_t i = 0; i < map_size; i++)
  {
    key_map[i] = MACH_READ_UINT32(buf + offset);
    offset += sizeof(uint32_t);
  }

  index_meta = ALLOC_P(heap, IndexMetadata)(index_id, index_name, table_id, key_map);

  return offset;
}