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

  //���ƹ��캯��
  explicit IndexMetadata(const index_id_t index_id, const std::string &index_name,
                         const table_id_t table_id, const std::vector<uint32_t> &key_map)
                        : index_id_(index_id), index_name_(index_name), table_id_(table_id), key_map_(key_map) 
                        {}

private:
  static constexpr uint32_t INDEX_METADATA_MAGIC_NUM = 344528;
  index_id_t index_id_;
  std::string index_name_;
  table_id_t table_id_;
  std::vector<uint32_t> key_map_;  /** The mapping of index key to tuple column ����������Ԫ���е��ļ��� */ 
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
    �������ȴ����õ�IndexMetadata�ʹ�CatalogManager�л�ȡ����TableInfo��
    �������������key_schema_��Index���������key_schema_����ͨ��Schema::ShallowCopySchema��������
    ��key_schema_�а���������TableSchema�е��й���ͬһ�ݴ洢��
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
    /*��Ҫ���ݸ�������ģʽ���м��㣬�õ�������Key����󳤶ȣ�
    Ȼ���ռ��㳤�Ƚ����жϣ�������󳤶�Ϊ10��ѡ��Generic<16>��Key��
    ��󳤶�Ϊ48��ѡ��Generic<64>��Key����Ӧ��index���Լ���ɣ���Ŀǰֻ�����ϲ��б�
    */

    Index* index = nullptr;

    // uint32_t serilize_size = 0;
    //GenericKey�ڲ�ʵ���ϴ洢�������������л���õ����ַ���
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
  //����Ԫ��Ϣmeta_data_, ������Ϣ���Է����л����Ԫ��Ϣ
  IndexMetadata *meta_data_;  //��������ʱ��Ԫ��Ϣ����Ҫ���л��ͷ����л������˵���������ҳ�����л�����
  Index *index_;              //������������
  TableInfo *table_info_;     //������Ӧ�ı���Ϣ
  IndexSchema *key_schema_;   //������Ӧ��ģʽ��Ϣ
  MemHeap *heap_;             //����Ŀռ䶼����MemHeap
};

#endif //MINISQL_INDEXES_H
