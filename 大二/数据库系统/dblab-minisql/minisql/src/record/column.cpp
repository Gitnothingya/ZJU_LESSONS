#include "record/column.h"
#include<iostream>
using namespace std;

Column::Column(std::string column_name, TypeId type, uint32_t index, bool nullable, bool unique)
        : name_(std::move(column_name)), type_(type), table_ind_(index),
          nullable_(nullable), unique_(unique) {
  ASSERT(type != TypeId::kTypeChar, "Wrong constructor for CHAR type.");
  switch (type) {
    case TypeId::kTypeInt :
      len_ = sizeof(int32_t);
      break;
    case TypeId::kTypeFloat :
      len_ = sizeof(float_t);
      break;
    default:
      ASSERT(false, "Unsupported column type.");
  }
}

Column::Column(std::string column_name, TypeId type, uint32_t length, uint32_t index, bool nullable, bool unique)
        : name_(std::move(column_name)), type_(type), len_(length),
          table_ind_(index), nullable_(nullable), unique_(unique) {
  ASSERT(type == TypeId::kTypeChar, "Wrong constructor for non-VARCHAR type.");
}

Column::Column(const Column *other) : name_(other->name_), type_(other->type_), len_(other->len_),
                                      table_ind_(other->table_ind_), nullable_(other->nullable_),
                                      unique_(other->unique_) {}

uint32_t Column::SerializeTo(char *buf) const {
  //全都存进去
  uint32_t offset = 0;
  MACH_WRITE_UINT32(buf, COLUMN_MAGIC_NUM);
  offset += sizeof(uint32_t);
  ///////////////////////////////////////////////////////////////fix
  MACH_WRITE_UINT32(buf + offset, name_.length());  //注意len_不是列名的长度，而是此列元素的长度
  offset += sizeof(uint32_t);
  ///////////////////////////////////////////////////////////////
  MACH_WRITE_STRING(buf + offset, name_);
  offset += name_.length();
  memcpy(buf + offset, &type_, sizeof(TypeId));
  offset += sizeof(TypeId);
  MACH_WRITE_UINT32(buf + offset, len_);
  offset += sizeof(uint32_t);
  MACH_WRITE_UINT32(buf + offset, table_ind_);
  offset += sizeof(uint32_t);
  char a = nullable_;
  memcpy(buf + offset, &a, sizeof(char));
  offset += sizeof(char);
  a = unique_;
  memcpy(buf + offset, &a, sizeof(char));
  offset += sizeof(char);
  // replace with your code here
  return offset;
}

uint32_t Column::GetSerializedSize() const {
  return 4 * sizeof(uint32_t) + name_.length() + sizeof(TypeId) + 2 * sizeof(char);
}

uint32_t Column::DeserializeFrom(char *buf, Column *&column, MemHeap *heap) {
  if (column != nullptr) {
    std::cout<< "Pointer to column is not null in column deserialize." << std::endl;
  }
  /* deserialize field from buf */
  uint32_t offset = 0;
  offset += sizeof(uint32_t);
  uint32_t name_len = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);

  char name[name_len];
  memcpy(name, buf + offset, name_len);
  std::string column_name(name, name_len);

  offset += name_len;
  TypeId type;
  memcpy(&type, buf + offset, sizeof(TypeId));
  offset += sizeof(TypeId);
  uint32_t len = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  uint32_t col_ind = MACH_READ_UINT32(buf + offset);
  offset += sizeof(uint32_t);
  char a = 0;
  memcpy(&a, buf + offset, sizeof(char));
  offset += sizeof(char);
  bool nullable = a;
  a = 0;
  memcpy(&a, buf + offset, sizeof(char));
  offset += sizeof(char);
  bool unique = a;
  //fix
  if(type == kTypeChar)
  {
    column = ALLOC_P(heap, Column)(column_name, type, len, col_ind, nullable, unique);
  }
  else
  {
    column = ALLOC_P(heap, Column)(column_name, type, col_ind, nullable, unique);
  }
  /* void *mem = heap->Allocate(sizeof(Column));
  column = new(mem)Column(column_name, type, len, col_ind, nullable, unique); */
  return offset;
}