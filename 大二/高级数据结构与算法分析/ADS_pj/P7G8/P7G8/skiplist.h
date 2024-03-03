#ifndef _SKIPLIST_H_
#define _SKIPLIST_H_
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <algorithm>
using namespace std;

template<class T>
class skipNode{
public:
	int index;			//����
	T 	value;			//����ֵ
	int Mlevel;			//��߲���
	vector <skipNode*> Next;//��һ�ڵ�ָ��

	skipNode(int key,T val,int level); //���캯��
	//skipNode(){}
};


template<class T>
class skipList{
private:
	skipNode<T>* head;		//��ͷ
	skipNode<T>* tail;		//��β
	int max_level_set;	//�趨������
	int max_level_cur;	//��ǰ����������
	int pro_set;		//�趨���ʣ��ٷ�����������������Ϊ��һ���pro_set%

	int RandomLevel();	//�������
	vector<skipNode<T>*> findLessThan(int key);			//����С��key�����index�ڵ㣬��ߴ���������
public:
	skipList(int maxLevel,int p);		//���캯��
	//skipList<T>();
	skipNode<T>* insertNode(int key, T value);	//�������
	skipNode<T>* findNode(int key);				//��ѯ
	bool		 deleteNode(int key);			//ɾ��
	vector<int> getIndexNum();			//��ø����������
};


#endif



