#ifndef MINISQL_TABLE_ITERATOR_H
#define MINISQL_TABLE_ITERATOR_H

#include "common/rowid.h"
#include "record/row.h"
#include "transaction/transaction.h"


class TableHeap;

/**
 * @brief �����ϲ�ģ��˳������ѱ��¼
 * 
 */
class TableIterator {

public:
  // you may define your own constructor based on your member variables
  explicit TableIterator(RowId rowid, TableHeap* table_heap_);

  explicit TableIterator(const TableIterator &other);

  virtual ~TableIterator();

  inline bool operator==(const TableIterator &itr) const{
    return iter->GetRowId() == itr.iter->GetRowId();
  }

  inline bool operator!=(const TableIterator &itr) const{
    return iter->GetRowId() != itr.iter->GetRowId();
  }

  const Row &operator*();

  Row *operator->();

  TableIterator &operator++();

  TableIterator operator++(int);

private:
  // add your own private member variables here
  Row* iter;  //ָ�򿽱���page�ж�Ӧλ��tuple���ݵ�Row�����������ֵû������
  TableHeap* table_heap_;
};

#endif //MINISQL_TABLE_ITERATOR_H
