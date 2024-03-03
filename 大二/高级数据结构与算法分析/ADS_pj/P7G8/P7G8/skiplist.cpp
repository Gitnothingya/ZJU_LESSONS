#include "skiplist.h"


static int maxInt =  2147483647;
static int minInt = -2147483647;

/**
 * @brief 
 * ����һ������ڵ�
 * @tparam T 
 * @param key ����
 * @param val ����ֵ
 * @param level ����
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
 * ��������
 * @tparam T  
 * @param maxLevel ������
 * @param p ��������
 */
template <class T>
skipList<T>::skipList(int maxLevel,int p):max_level_set(maxLevel),max_level_cur(1),pro_set(p)
{
	T tmp;
	head = new skipNode<T>(minInt, tmp, maxLevel);// ��ʼ��ͷ�ڵ㣬����Ϊ��С����
	tail = new skipNode<T>(maxInt, tmp, maxLevel);// ��ʼ��β�ڵ㣬����Ϊ�������

	//���в����ϵ�ͷ���ָ��β�ڵ�
	for (int i = 0; i < maxLevel; i++)
	{
		head->Next[i] = tail;
	}
	srand((int)time(NULL));//���������
}

/**
 * @brief 
 * Ѱ������ֵС��key�����ڵ�
 * @tparam T 
 * @param key Լ��ֵ
 * @return skipNode<T>* 
 */  
template <class T>
vector<skipNode<T>*> skipList<T>::findLessThan(int key)
{
	vector<skipNode<T>*> v;	//�洢�������ָ��
	skipNode<T>* tmp = head; //��ʱ������������

	for(int i = max_level_set-1 ;i>-1;i--){
		while(tmp->Next[i] != nullptr && tmp->Next[i]->index < key ){
			tmp = tmp->Next[i];
		}
		v.push_back(tmp);
	}
	reverse(v.begin(),v.end());//��ת���飬ʹ��һ�㴦��[0]
	return v;
}


/**
 * @brief 
 * ����������趨��Ӧ���ʽ��в���ѡ��
 * @tparam T 
 * @return int 
 */
template <class T>
int skipList<T>::RandomLevel()
{
	int level=1;

	int tmp = rand()%100;
	while(tmp < pro_set && level <max_level_set){//�����С���趨����ֵ�ҵ�ǰ����С���趨������
		level++;
		tmp = rand()%100;
	}
	return level;
}

/**
 * @brief 
 * ԭ���������򴴽��ڵ���룬�������޸�ԭ�ڵ㡣���ض�Ӧ�ڵ�ָ��
 * @tparam T 
 * @param key 
 * @param value 
 * @return skipNode<T>* 
 */
template <class T>
skipNode<T>* skipList<T>::insertNode(int key, T value)
{
	vector<skipNode<T>*> v = findLessThan(key);//Ѱ�Ҹ������ڵ�

	skipNode<T>* tmp = v[0];
	if(tmp->Next[0]->index == key){//����������һ��һ���У��жϵ�һ���Next�����Ƿ�ƥ��
		tmp->Next[0]->value = value;
		return tmp;
	}
	else {
		int newLevel = RandomLevel();// �������
		skipNode<T>* newNode = new skipNode<T> (key,value,newLevel);//�����½ڵ�
		for(int i=0;i<newLevel;i++){
			//����ڵ�
			newNode -> Next[i] = v[i]->Next[i];
			v[i]->Next[i] = newNode;
		}
		return newNode;
	}
}
	
	
/**
 * @brief 
 * �ҵ��򷵻ض�Ӧ�ڵ㣬ʧ�ܷ���nullptr.
 * @tparam T 
 * @param keys 
 * @return skipNode<T>* 
 */
template <class T>
skipNode<T>* skipList<T>::findNode(int key)
{
	vector<skipNode<T>*> v = findLessThan(key);//����С��key�����ڵ�ָ��
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
 * ɾ���ɹ��򷵻�true��ʧ�ܷ���false
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
	if(tmp->Next[0]->index!=key){//�ڵ㲻���ڣ��޷�ɾ��
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
		delete del;//�����ڵ�
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



