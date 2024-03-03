#ifndef _LIST_H_
#define _LIST_H_

static int maxInt =  2147483647;
static int minInt = -2147483647;

template<class T>
class SingleNode{
public:
	int key;
	T value;
	SingleNode* Next;

	SingleNode(int keys, T values):key(keys),value(values){Next = nullptr;}
};

template<class T>
class SingleList{
private:
	SingleNode* head;
	SingleNode* tail;

public:
	SingleList();
	SingleNode* insertNode(int key,T value);
	SingleNode* findNode(int key);
	bool 		deleteNode(int key);
};

template<class T>
SingleNode* SingleList<T>::insertNode(int key, T value)
{
	SingleNode* new = new SingleNode(key,value);
}


#endif