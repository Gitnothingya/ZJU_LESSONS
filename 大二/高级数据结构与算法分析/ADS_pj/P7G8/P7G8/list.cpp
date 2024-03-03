static int maxI =  2147483647;
static int minI = -2147483647;

template<class T>
class SingleNode{
public:
	int key;
	T value;
	SingleNode<T>* Next;

	SingleNode(int keys, T values):key(keys),value(values){Next = nullptr;}
};

template<class T>
class SingleList{
private:
	SingleNode<T>* head;
	SingleNode<T>* tail;

	SingleNode<T>* findLessThan(int key);
public:
	SingleList();
	SingleNode<T>* insertNode(int key,T value);
	SingleNode<T>* findNode(int key);
	bool 		deleteNode(int key);
};

template<class T>
SingleList<T>::SingleList()
{
	T t;
	head = new SingleNode<T>(minI , t);
	tail = new SingleNode<T>(maxI , t);
	head -> Next = tail;
}


template<class T>
SingleNode<T>* SingleList<T>::findLessThan(int key)
{
	SingleNode<T>* tmp = head;

	while(tmp->Next!=tail && tmp->Next->key < key){
		tmp = tmp->Next;
	}
	return tmp;
}



template<class T>
SingleNode<T>* SingleList<T>::insertNode(int key, T value)
{
	SingleNode<T>* tmp = findLessThan(key);

	if(tmp->Next->key == key){
		tmp = tmp->Next;
		tmp->value = value;
		return tmp;
	}
	else {
		SingleNode<T>* newNode = new SingleNode<T>(key,value);
		newNode->Next = tmp->Next;
		tmp->Next = newNode;
		return newNode;
	}
}


template<class T>
SingleNode<T>* SingleList<T>::findNode(int key)
{
	SingleNode<T>* tmp = findLessThan(key);

	if(tmp->Next->key == key){
		return tmp->Next;
	}
	else {
		return nullptr;
	}
}


template<class T>
bool SingleList<T>::deleteNode(int key)
{
	SingleNode<T>* tmp = findLessThan(key);

	if(tmp->Next->key == key){
		SingleNode<T>* del = tmp->Next;
		tmp->Next = del->Next;
		delete del;
		return true;
	}
	else {
		return false;
	}
}
