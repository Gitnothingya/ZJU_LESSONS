#include "..\include\source.h"
#include <math.h>
#include <string.h>

static const int Infinity = 2147483647;

Graph ReadGraph(FILE * fp)
{
	int i , v1 , v2 , dis;
	Graph temp;
	PtrToNode tempptr;
	//FILE *fp=fopen("USA-road-d.NY.txt","r");
	temp = (Graph)malloc(sizeof(struct GNode));
	fscanf(fp,"%d%d",&temp->Nv,&temp->Ne);
	for(i = 1;i <= temp->Nv;i++)
		temp->G[i].FirstEdge = NewNode();
	for(i = 0;i < temp->Ne;i++)
	{
		fscanf(fp,"%*c");
		char ch;
		fscanf(fp,"%*c %d %d %d",&v1,&v2,&dis); 
		if(temp->G[v1].FirstEdge->Vertex == 0)	//如果该点还没有边，直接用firstedge 
		{
			temp->G[v1].FirstEdge->Vertex = v2;
			temp->G[v1].FirstEdge->Distance = dis;
		}
		else									//如果已有从该点出发的边，在表最后创造一个节点 
		{
			tempptr = temp->G[v1].FirstEdge;
			while(tempptr->Next != NULL)
				tempptr = tempptr->Next;
			tempptr->Next = NewNode();
			tempptr->Next->Vertex = v2;
			tempptr->Next->Distance = dis;
		}
	}
	return temp;
}


PtrToNode NewNode(void)
{
	PtrToNode temp;
	temp = (PtrToNode)malloc(sizeof(struct Node));
	temp->Vertex = temp->Distance = 0;
	temp->Next = NULL;
	return temp;
}

void printpath(int* Path,int v2)//路径打印，结合Dijkstra函数中的Path相关操作，可用于测试
{
    int p=v2;
    while(p!=0){
        printf("%d ",p);
        p=Path[p];
    }
}
int BiDijkstra(Graph G , int v1 , int v2,int *Dist,int * Known)
{
	int  i , MinVertex;
	int*Heap = (int*)malloc(sizeof(int)*MaxVertex);
    //int *Path= (int*)malloc(sizeof(int)*MaxVertex);
    memset(Heap,0,sizeof(int)*MaxVertex);
	PtrToNode tempptr;
	for(i = 1;i <= G->Nv;i++)
	{
		Dist[i] = Infinity;						//将所有点距离赋值为“无穷” 
		Known[i] = 0;							//将所有点标记为未知 
	}
	Dist[v1] = 0;								//出发点距离赋值0 
	Known[v1] = 1;								//出发点赋值为已知 
	Insert(Heap ,v1,Dist);							//出发点入堆 
    //Path[v1]=0;
	while(Heap[1])
	{
		MinVertex = DeleteMin(Heap,Dist);			//取出堆中距离最小的点 
		if(MinVertex == v2){						//若此点是目的点，距离确定，返回即可 
        //printpath(Path,v2);
        //free(Path);
			free(Heap);
            return Dist[v2];
        }
		Known[MinVertex] = 1;					//将取出的点标记为已知 
		tempptr = G->G[MinVertex].FirstEdge;
		while(tempptr != NULL)					//遍历与取出的点直接相连的点 
		{
			if(Known[tempptr->Vertex] == 0 && Dist[tempptr->Vertex] >= Dist[MinVertex] + tempptr->Distance)
			{									//若相连的点距离不确定，且从取出的点出发可以减少距离，重新赋值距离并将其入堆 
				Dist[tempptr->Vertex] = Dist[MinVertex] + tempptr->Distance;
                //Path[tempptr->Vertex] = MinVertex;
				Insert(Heap,tempptr->Vertex,Dist);
			}
			tempptr = tempptr->Next;
		}
	}
    free(Heap);
    return Infinity;
}


int FibDijkstra(Graph G , int v1 , int v2,int *Dist,int * Known)
{
    //int *Path= (int*)malloc(sizeof(int)*MaxVertex);
	int i, MinVertex;
    PtrFibonacciHeap Heap = BuildFibonacciHeap();
	PtrToNode tempptr;
	for(i = 1;i <= G->Nv;i++)
	{
		Dist[i] = Infinity;
		Known[i] = 0;
	}
	Dist[v1] = 0;
	Known[v1] = 1;
    //Path[v1] = 0;
    InsertFibonacciHeap(Heap,v1,Dist);
	while(Heap->number)
	{
		MinVertex = DeleteminFibonacciHeap(Heap,Dist);
		if(MinVertex == v2){
            //printpath(Path,v2);
            //free(Path);
            FreeHeap(Heap);
            return Dist[v2];
        }
		Known[MinVertex] = 1;
		tempptr = G->G[MinVertex].FirstEdge;
		while(tempptr != NULL)
		{
			if(Known[tempptr->Vertex] == 0 && Dist[tempptr->Vertex] > Dist[MinVertex] + tempptr->Distance)
			{
				Dist[tempptr->Vertex] = Dist[MinVertex] + tempptr->Distance;
                InsertFibonacciHeap(Heap,tempptr->Vertex,Dist);
                //Path[tempptr->Vertex] = MinVertex;
			}
			tempptr = tempptr->Next;
		}
	}
    FreeHeap(Heap);
    return Infinity;
}

void Insert(int* heap,int num,int * Dist)				//入堆函数 
{
	int i = 1 , temp;
	while(heap[i])
	{
		if(heap[i] == num)						//若新数和堆里某个数重合，不入堆 
			break;
		i++;
	}
	heap[i] = num;								//将新数放到堆最后 
	while(Dist[heap[i]] < Dist[heap[i / 2]])	//依次检查新数的祖先，若一对父子不符合最小堆性质，交换他们 
	{
		temp = heap[i];
		heap[i] = heap[i / 2];
		heap[i / 2] = temp;
		i /= 2;
	}
}

int DeleteMin(int* heap,int* Dist)
{
	int r , i = 1 , j , temp;
	r = heap[1];
	while(heap[i])								//取出第一个值，将后面所有值前移一位 
	{
		heap[i] = heap[i + 1];
		i++;
	}
	i-=2;
	for(j = i;j > 0;j--)
	{
		if(Dist[heap[j]] < Dist[heap[j / 2]])	//依次检查每对父子，若一对父子不符合最小堆性质，交换他们粬浠?
		{
			temp = heap[j];
			heap[j] = heap[j / 2];
			heap[j / 2] = temp;
		}
	}
	return r;
}

PtrFibonacciHeap BuildFibonacciHeap()
{
    PtrFibonacciHeap heap;
    heap = (PtrFibonacciHeap)malloc(sizeof(FibonacciHeap)); //malloc the heap space
    if(!heap){
        printf("Can't malloc the heap space!\n");
        return NULL;
    }
    heap->number = heap->maxdegree = 0;
    heap->min = NULL;
    heap->tmp = NULL;
    return heap;
}

void InsertFibonacciHeap(PtrFibonacciHeap MyHeap,int value,int * Dist)
{
    PtrFibonacciNode node = (PtrFibonacciNode)malloc(sizeof(FibonacciNode));
    if(!node){
        printf("Can't malloc the node space!\n");
        return;
    }
    /*initialize the empty node*/
    node->value = value;
    node->degree = node->mark = 0;
    node->left = node->right = node;
    node->parent = node->child = NULL;
    if(MyHeap->number == 0){  //the heap is empty
        MyHeap->min = node;
    }else{
        AddRoot(node,MyHeap->min);
        if(Dist[node->value] < Dist[MyHeap->min->value]){  //change the minimum node
            MyHeap->min = node;
        }
    }
    MyHeap->number++;
}

void AddRoot(PtrFibonacciNode Node,PtrFibonacciNode Root)
{
    Node->left = Root->left;
    Root->left->right = Node;
    Node->right = Root;
    Root->left = Node;
}

int DeleteminFibonacciHeap(PtrFibonacciHeap MyHeap,int * Dist)
{
    PtrFibonacciNode TmpNode = NULL,min = MyHeap->min;
    int minValue = min->value;  //record the root minimum value
    while(min->child){
        TmpNode = min->child;
        if(TmpNode->right == TmpNode){ //the node has no brother
            min->child = NULL;
        }else{
            TmpNode->left->right = TmpNode->right;
            TmpNode->right->left = TmpNode->left;
            min->child = TmpNode->right;
        }
        AddRoot(TmpNode,MyHeap->min); //add the TmpNode to the root node linked list
        TmpNode->parent = NULL;
    }
    if(min->right == min){ //the min node has no brother
        MyHeap->min = NULL;
    }else{
        min->left->right = min->right;
        min->right->left = min->left;
        MyHeap->min = min->right;
        ConsolidateFibonacciHeap(MyHeap,Dist);
    }
    free(min);  //free the space
    MyHeap->number--; //change the total numbers of the root 
    return minValue;
}

void ConsolidateFibonacciHeap(PtrFibonacciHeap MyHeap,int * Dist)
{
    int LoopCnt,i;
    int OldMaxDegree = MyHeap->maxdegree; //the old max degree
    MyHeap->maxdegree = (int)log2(MyHeap->number) + 1; //the needed space
    if(OldMaxDegree < MyHeap->maxdegree){
        MyHeap->tmp = (PtrFibonacciNode*)realloc(MyHeap->tmp,sizeof(PtrFibonacciNode) * (MyHeap->maxdegree+1));
        //reallocate the space,and "+1" means considering the merge situation
    }
    LoopCnt = MyHeap->maxdegree + 1;
    for(i = 0; i < LoopCnt; i++){
        MyHeap->tmp[i] = NULL;
    }
    PtrFibonacciNode TmpMin,TmpSameDegreeNode,TmpNode;
    int TmpMinDegree;
    while(MyHeap->min != NULL){
        TmpMin = RemoveMinNode(MyHeap); //the min node
        TmpMinDegree = TmpMin->degree;
        while(MyHeap->tmp[TmpMinDegree] != NULL){ //merge the same degree node
            TmpSameDegreeNode = MyHeap->tmp[TmpMinDegree];  //same degree number tree
            if(Dist[TmpMin->value] > Dist[TmpSameDegreeNode->value]){ //make Dist[TmpMin->value] is less than the other
                TmpNode = TmpMin;
                TmpMin = TmpSameDegreeNode;
                TmpSameDegreeNode = TmpNode;
            }
            TmpSameDegreeNode->left->right = TmpSameDegreeNode->right;
            TmpSameDegreeNode->right->left = TmpSameDegreeNode->left;
            if(TmpMin->child){
                AddRoot(TmpSameDegreeNode,TmpMin->child);
            }else{
                TmpMin->child = TmpSameDegreeNode;
            }
            TmpSameDegreeNode->parent = TmpMin;
            TmpSameDegreeNode->mark = 0;
            TmpMin->degree++; //merge cause degree plus 1
            MyHeap->tmp[TmpMinDegree] = NULL;
            TmpMinDegree++;
        }
        MyHeap->tmp[TmpMinDegree] = TmpMin;
    }
    MyHeap->min = NULL;
    for(i = 0; i < LoopCnt; i++){
        if(MyHeap->tmp[i]){
            if(!MyHeap->min){ //min node hasn't been found
                MyHeap->min = MyHeap->tmp[i];
            }else{
                AddRoot(MyHeap->tmp[i],MyHeap->min);
                if(Dist[MyHeap->tmp[i]->value] < Dist[MyHeap->min->value]){
                    MyHeap->min = MyHeap->tmp[i];
                }
            }
        }
    }
}

PtrFibonacciNode RemoveMinNode(PtrFibonacciHeap MyHeap)
{
    PtrFibonacciNode min = MyHeap->min;
    if(MyHeap->min == min->right){ //the min node has no brother
        MyHeap->min = NULL;
    }else{
        min->left->right = min->right;
        min->right->left = min->left;
        MyHeap->min = min->right;
    }
    min->left = min->right = min;
    return min;
}

void FreeNode(PtrFibonacciNode Node)
{
    if(Node==NULL){
        return ;
    }
    Node->left->right=NULL;
    while(Node!=NULL){
        if(Node->child!=NULL){
            FreeNode(Node->child);
        }
        PtrFibonacciNode tmp = Node;
        Node=Node->right;
        free(tmp);
    }
}
void FreeHeap(PtrFibonacciHeap MyHeap)
{
    FreeNode(MyHeap->min);
    free(MyHeap->tmp);
    free(MyHeap);
}

















