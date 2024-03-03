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
	int index;			//索引
	T 	value;			//具体值
	int Mlevel;			//最高层数
	vector <skipNode*> Next;//下一节点指针

	skipNode(int key,T val,int level); //构造函数
	//skipNode(){}
};


template<class T>
class skipList{
private:
	skipNode<T>* head;		//表头
	skipNode<T>* tail;		//表尾
	int max_level_set;	//设定最大层数
	int max_level_cur;	//当前表中最大层数
	int pro_set;		//设定概率，百分数，新增层索引数为上一层的pro_set%

	int RandomLevel();	//随机层数
	vector<skipNode<T>*> findLessThan(int key);			//查找小于key的最大index节点，提高代码重用性
public:
	skipList(int maxLevel,int p);		//构造函数
	//skipList<T>();
	skipNode<T>* insertNode(int key, T value);	//插入操作
	skipNode<T>* findNode(int key);				//查询
	bool		 deleteNode(int key);			//删除
	vector<int> getIndexNum();			//获得各层的数据量
};


#endif



