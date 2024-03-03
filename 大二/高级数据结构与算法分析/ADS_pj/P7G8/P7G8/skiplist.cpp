#include "skiplist.h"


static int maxInt =  2147483647;
static int minInt = -2147483647;

/**
 * @brief 
 * 构造一个跳表节点
 * @tparam T 
 * @param key 索引
 * @param val 具体值
 * @param level 层数
 */
template <class T>
skipNode<T>::skipNode(int key,T val,int level):index(key),value(val),Mlevel(level)
{
	for(int i=0;i<level;i++){
		Next.push_back(NULL);
	}
}

/**
 * @brief 
 * 构造跳表
 * @tparam T  
 * @param maxLevel 最大层数
 * @param p 索引概率
 */
template <class T>
skipList<T>::skipList(int maxLevel,int p):max_level_set(maxLevel),max_level_cur(1),pro_set(p)
{
	T tmp;
	head = new skipNode<T>(minInt, tmp, maxLevel);// 初始化头节点，索引为最小整型
	tail = new skipNode<T>(maxInt, tmp, maxLevel);// 初始化尾节点，索引为最大整型

	//所有层数上的头结点指向尾节点
	for (int i = 0; i < maxLevel; i++)
	{
		head->Next[i] = tail;
	}
	srand((int)time(NULL));//随机数种子
}

/**
 * @brief 
 * 寻找索引值小于key的最大节点
 * @tparam T 
 * @param key 约束值
 * @return skipNode<T>* 
 */  
template <class T>
vector<skipNode<T>*> skipList<T>::findLessThan(int key)
{
	vector<skipNode<T>*> v;	//存储各层最大指针
	skipNode<T>* tmp = head; //临时变量遍历跳表

	for(int i = max_level_set-1 ;i>-1;i--){
		while(tmp->Next[i] != nullptr && tmp->Next[i]->index < key ){
			tmp = tmp->Next[i];
		}
		v.push_back(tmp);
	}
	reverse(v.begin(),v.end());//逆转数组，使第一层处于[0]
	return v;
}


/**
 * @brief 
 * 利用随机数设定对应概率进行层数选择
 * @tparam T 
 * @return int 
 */
template <class T>
int skipList<T>::RandomLevel()
{
	int level=1;

	int tmp = rand()%100;
	while(tmp < pro_set && level <max_level_set){//随机数小于设定概率值且当前层数小于设定最大层数
		level++;
		tmp = rand()%100;
	}
	return level;
}

/**
 * @brief 
 * 原来不存在则创建节点插入，存在则修改原节点。返回对应节点指针
 * @tparam T 
 * @param key 
 * @param value 
 * @return skipNode<T>* 
 */
template <class T>
skipNode<T>* skipList<T>::insertNode(int key, T value)
{
	vector<skipNode<T>*> v = findLessThan(key);//寻找各层最大节点

	skipNode<T>* tmp = v[0];
	if(tmp->Next[0]->index == key){//如果存在则第一层一定有，判断第一层的Next索引是否匹配
		tmp->Next[0]->value = value;
		return tmp;
	}
	else {
		int newLevel = RandomLevel();// 随机层数
		skipNode<T>* newNode = new skipNode<T> (key,value,newLevel);//构造新节点
		for(int i=0;i<newLevel;i++){
			//插入节点
			newNode -> Next[i] = v[i]->Next[i];
			v[i]->Next[i] = newNode;
		}
		return newNode;
	}
}
	
	
/**
 * @brief 
 * 找到则返回对应节点，失败返回nullptr.
 * @tparam T 
 * @param keys 
 * @return skipNode<T>* 
 */
template <class T>
skipNode<T>* skipList<T>::findNode(int key)
{
	vector<skipNode<T>*> v = findLessThan(key);//各层小于key的最大节点指针
	skipNode<T>* tmp = v[0];
	tmp = tmp ->Next[0];

	if(tmp->index == key){
		return tmp;
	}
	else {
		return nullptr;
	}
}

/**
 * @brief 
 * 删除成功则返回true，失败返回false
 * @tparam T 
 * @param key 
 * @return true 
 * @return false 
 */
template <class T>
bool skipList<T>::deleteNode(int key)
{
	vector<skipNode<T>*> v = findLessThan(key);

	skipNode<T>* tmp = v[0];
	if(tmp->Next[0]->index!=key){//节点不存在，无法删除
		return false;
	}
	else {
		skipNode<T>* del=tmp->Next[0];
		for(int i=0;i<v.size();i++){
			tmp = v[i];
			if(tmp->Next[i]->index==key){
				tmp->Next[i]=tmp->Next[i]->Next[i];
			}
			else break;
		}
		delete del;//析构节点
		return true;
	}
}

template<class T>
vector<int> skipList<T>::getIndexNum()
{
	skipNode<T> * tmp;
	vector<int> v;
	for(int i=0;i<max_level_set;i++){
		int count=0;
		tmp=head;
		while(tmp->Next[i]!=tail){
			count++;
			tmp=tmp->Next[i];
		}
		v.push_back(count);
	}
	return v;
}



