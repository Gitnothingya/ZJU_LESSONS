#include "record/schema.h"

uint32_t Schema::SerializeTo(char *buf) const {
  uint32_t offset = 0;
  MACH_WRITE_UINT32(buf, SCHEMA_MAGIC_NUM);
  offset += sizeof(int32_t);
  for(size_t i = 0; i < columns_.size(); i++)
  {
    offset += columns_[i]->SerializeTo(buf + offset);
  }

  return offset;
}

uint32_t Schema::GetSerializedSize() const {
    uint32_t offset = 0;
    offset += sizeof(uint32_t);
    for(size_t i = 0; i < columns_.size(); i++)
    {
      offset += columns_[i]->GetSerializedSize();
    }

    return offset;
}

uint32_t Schema::DeserializeFrom(char *buf, Schema *&schema, MemHeap *heap) {

  if (schema != nullptr) {
    std::cout << "Pointer to schema is not null in schema deserialize." << std::endl;
  }
  /* deserialize field from buf */
  uint32_t offset = 0;
  //Ìø¹ýÄ§Êý
  offset += sizeof(uint32_t);
  std::vector<Column *> columns;

  uint32_t checkcolumn;
  int i = 0;

  while(1)
  {
    checkcolumn = MACH_READ_UINT32(buf + offset);
    if(checkcolumn != Column::COLUMN_MAGIC_NUM)
      break;

    columns.push_back(nullptr);
    offset += Column::DeserializeFrom(buf + offset, columns[i], heap);
    i++;
  }

  schema = ALLOC_P(heap, Schema)(columns);
  return offset;
}