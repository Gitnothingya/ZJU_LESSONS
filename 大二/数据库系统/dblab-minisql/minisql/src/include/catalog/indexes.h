#ifndef MINISQL_INDEXES_H
#define MINISQL_INDEXES_H

#include <memory>

#include "catalog/table.h"
#include "index/generic_key.h"
#include "index/b_plus_tree_index.h"
#include "record/schema.h"

class IndexMetadata {
  friend class IndexInfo;

public:
  static IndexMetadata *Create(const index_id_t index_id, const std::string &index_name,
                               const table_id_t table_id, const std::vector<uint32_t> &key_map,
                               MemHeap *heap);

  uint32_t SerializeTo(char *buf) const;

  uint32_t GetSerializedSize() const;

  static uint32_t DeserializeFrom(char *buf, IndexMetadata *&index_meta, MemHeap *heap);

  inline std::string GetIndexName() const { return index_name_; }

  inline table_id_t GetTableId() const { return table_id_; }

  uint32_t GetIndexColumnCount() const { return key_map_.size(); }

  inline const std::vector<uint32_t> &GetKeyMapping() const { return key_map_; }

  inline index_id_t GetIndexId() const { return index_id_; }

private:
  IndexMetadata() = delete;

  //完善构造函数
  explicit IndexMetadata(const index_id_t index_id, const std::string &index_name,
                         const table_id_t table_id, const std::vector<uint32_t> &key_map)
                        : index_id_(index_id), index_name_(index_name), table_id_(table_id), key_map_(key_map) 
                        {}

private:
  static constexpr uint32_t INDEX_METADATA_MAGIC_NUM = 344528;
  index_id_t index_id_;
  std::string index_name_;
  table_id_t table_id_;
  std::vector<uint32_t> key_map_;  /** The mapping of index key to tuple column 索引建立在元组中的哪几列 */ 
};

/**
 * The IndexInfo class maintains metadata about a index.
 */
class IndexInfo {
public:
  static IndexInfo *Create(MemHeap *heap) {
    void *buf = heap->Allocate(sizeof(IndexInfo));
    return new(buf)IndexInfo();
  }

  ~IndexInfo() {
    delete heap_;
  }

  void Init(IndexMetadata *meta_data, TableInfo *table_info, BufferPoolManager *buffer_pool_manager) {
    // Step1: init index metadata and table info
    // Step2: mapping index key to key schema
    // Step3: call CreateIndex to create the index
    /*
    传入事先创建好的IndexMetadata和从CatalogManager中获取到的TableInfo，
    创建索引本身的key_schema_和Index对象。这里的key_schema_可以通过Schema::ShallowCopySchema来创建，
    且key_schema_中包含的列与TableSchema中的列共享同一份存储。
    */
    //step 1
    meta_data_ = meta_data;
    table_info_ = table_info;
    //step 2
    key_schema_ = Schema::ShallowCopySchema(table_info_->GetSchema(), meta_data_->GetKeyMapping(), heap_);
    //step 3
    index_ = CreateIndex(buffer_pool_manager);
    //ASSERT(false, "Not Implemented yet.");
  }

  inline Index *GetIndex() { return index_; }

  inline std::string GetIndexName() { return meta_data_->GetIndexName(); }

  inline IndexSchema *GetIndexKeySchema() { return key_schema_; }

  inline MemHeap *GetMemHeap() const { return heap_; }

  inline TableInfo *GetTableInfo() const { return table_info_; }

private:
  explicit IndexInfo() : meta_data_{nullptr}, index_{nullptr}, table_info_{nullptr},
                         key_schema_{nullptr}, heap_(new SimpleMemHeap()) {}

Index *CreateIndex(BufferPoolManager *buffer_pool_manager) {
    //ASSERT(false, "Not Implemented yet.");
    //return nullptr;
    /*需要根据该索引的模式进行计算，得到该索引Key的最大长度，
    然后按照计算长度进行判断，比如最大长度为10就选用Generic<16>的Key，
    最大长度为48就选用Generic<64>的Key。理应在index层自己完成，但目前只能在上层判别
    */

    Index* index = nullptr;

    // uint32_t serilize_size = 0;
    //GenericKey内部实际上存储的是索引键序列化后得到的字符串
    const Column* col = nullptr;
    uint32_t col_cnt = key_schema_->GetColumnCount();
    std::vector<Field> fields;
    for(uint32_t i = 0; i < col_cnt; i++)
    {
      col = key_schema_->GetColumn(i);
      switch (col->GetType())
      {
      case kTypeInt:
      {
        Field tmp(kTypeInt, 0);
        fields.push_back(tmp);
        break;
      }
      case kTypeFloat:
      {
        Field tmp(kTypeFloat, float(0.0));
        fields.push_back(tmp);
        break;
      }
      case kTypeChar:
      {
        Field tmp(kTypeChar, nullptr, col->GetLength(), false);
        fields.push_back(tmp);
        break;
      }
      default:
        break;
      }
    }

    Row key_row(fields);
    
index = new(heap_->Allocate(sizeof(BPlusTreeIndex<GenericKey<64>, RowId, GenericComparator<64>>))) BPlusTreeIndex<GenericKey<64>, RowId, GenericComparator<64>>(meta_data_->GetIndexId(), key_schema_, buffer_pool_manager);

    return index;
  }

private:
  //除了元信息meta_data_, 其它信息来自反序列化后的元信息
  IndexMetadata *meta_data_;  //索引定义时的元信息，需要序列化和反序列化，给了单独的数据页存序列化数据
  Index *index_;              //索引操作对象
  TableInfo *table_info_;     //索引对应的表信息
  IndexSchema *key_schema_;   //索引对应的模式信息
  MemHeap *heap_;             //申请的空间都来自MemHeap
};

#endif //MINISQL_INDEXES_H
