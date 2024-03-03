#ifndef MINISQL_TYPE_ID_H
#define MINISQL_TYPE_ID_H

/**
 * @brief ��ʶ���ݵ����ͣ�0-invalid��1-int��2-float��3-char
 * 
 */
enum TypeId {
  kTypeInvalid = 0,
  kTypeInt,
  kTypeFloat,
  kTypeChar,
  KMaxTypeId = kTypeChar
};

#endif //MINISQL_TYPE_ID_H
