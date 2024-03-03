#include "record/row.h"

uint32_t Row::SerializeTo(char *buf, Schema *schema) const {
  if(fields_.size() == 0) 
    return 0;
  
  uint32_t mapsize = 0;
  mapsize += schema->GetColumnCount() / 8;

  if(schema->GetColumnCount() % 8 == 0);
  else mapsize++;

  char nullbitmap[mapsize] = {0};
  int byte_index;
  int bit_index;

  for(size_t i = 0; i < fields_.size(); i++)
  {
    if(fields_[i]->IsNull())
    {
      byte_index = i / 8;
      bit_index = i % 8;
      nullbitmap[byte_index] |= (1 << bit_index); //值为null
    }
  }

  uint32_t offset = 0;

  memcpy(buf, nullbitmap, mapsize);
  offset += mapsize;
  for(size_t i = 0; i < fields_.size(); i++)
  {
    TypeId type = fields_[i]->GetType();
    memcpy(buf + offset, &type, sizeof(TypeId));
    offset += sizeof(TypeId);
    offset += fields_[i]->SerializeTo(buf + offset);  //大BUG：忘记加offset了!!!!!!
  }

  return offset;
  // replace with your code here
}

uint32_t Row::DeserializeFrom(char *buf, Schema *schema) {

  uint32_t mapsize = 0;
  mapsize += schema->GetColumnCount() / 8;

  if(schema->GetColumnCount() % 8 == 0);
  else mapsize++;

  uint32_t offset = 0;

  //之前出了bug
  char nullbitmap[mapsize] = {0};
  memcpy(nullbitmap, buf, mapsize);
  offset += mapsize;

  int byte_index;
  int bit_index;

  for(uint32_t i = 0; i < schema->GetColumnCount(); i++)
  {
    bool isnull;
    TypeId type;

    byte_index = i / 8;
    bit_index = i % 8;
    isnull = nullbitmap[byte_index] & (1 << bit_index); //根据空位判断是否为null

    memcpy(&type, buf + offset, sizeof(TypeId));
    offset += sizeof(TypeId);
    fields_.push_back(nullptr);
    offset += Field::DeserializeFrom(buf + offset, type, &fields_[i], isnull, heap_);
  }

  return offset;

  // replace with your code here
}

uint32_t Row::GetSerializedSize(Schema *schema) const {
  // replace with your code here
  if(fields_.size() == 0) 
    return 0;

  //null bitmaps + (type_id)fields
  uint32_t seriasize = 0;
  seriasize += schema->GetColumnCount() / 8;
  if(schema->GetColumnCount() % 8 == 0);
  else seriasize++;
  for(size_t i = 0; i < fields_.size(); i++)
  seriasize += fields_[i]->GetSerializedSize(); 
  seriasize += fields_.size() * sizeof(TypeId); //要存类型
  
  return seriasize;
}
