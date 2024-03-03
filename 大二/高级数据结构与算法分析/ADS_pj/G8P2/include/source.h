/**
 * 由于组内规划不完善，为减少整合的时间、精力成本
 * 将所有的堆与图的结构体和函数声明存放于此文件。
 * 第一部分为图的相关声明与Dijkstra函数
 * 第二部分为binary heap的相关函数
 * 第三部分为Fibonacci heap的相关函数
 */

#ifndef _SOURCE_H_
#define _SOURCE_H_

#include<stdio.h>
#include<stdlib.h>

#define MaxVertex 3000000
//#define Infinity 21474
//const int Infinity = 2147483647;


/**
 * 以下为图的结构与函数声明；
 * 我们采用邻接表的形式构造图，
 * 虽然从检查的部分来看，图在所有点对上都是双向的，
 * 但是数据量太大，很难真的检查所有数据，
 * 就算有人做保是成对的，也难以保证数据构造时的准确性。
 */

//图的相关结构体
typedef struct Node *PtrToNode; 
struct Node{
    int Vertex;                         //连接的节点
    int Distance;                       //连接的距离
    PtrToNode Next;                     //连接的下一节点
};//

typedef struct Vnode{
    PtrToNode FirstEdge;
} AdjList[MaxVertex];                   //邻接表的主体


typedef struct GNode *PtrToGNode;
struct GNode{  
    int Nv;								//点数 
    int Ne;								//边数 
    AdjList G;							//邻接表 
};
typedef PtrToGNode Graph;

//图的相关函数
/**
 * @brief 图的读取构造函数
 * 通过文件指针读取文件信息，构造图。
 * @param fp 
 * @return Graph 
 */
Graph ReadGraph(FILE * fp);

/**
 * @brief 图节点构造
 * 
 * @return PtrToNode 
 */
PtrToNode NewNode(void);


/**
 * @brief 两种堆的Dijkstra算法
 * 由于两种堆的对应操作函数的参数表不同，两个函数无法合并。
 * 但是两个函数除堆实现外的结构是一致的，对于测试基本无影响
 * @param G 根据文件构造的图
 * @param v1 起始点
 * @param v2 终点
 * @param Dist 主函数中申请的存储距离的数组
 * @param known 存储是否访问的数组
 * @return int 返回两点之间的距离
 */
int FibDijkstra(Graph G , int v1 , int v2,int *Dist,int * Known);
int BiDijkstra(Graph G , int v1 , int v2,int *Dist,int * Known);




// binary heap 的声明
/**
 * @brief binary heap 的插入函数
 * 
 * @param heap 
 * @param num 
 * @param Dist
 */
void Insert(int* heap,int num ,int * Dist);

/**
 * @brief binary heap 的删除函数
 * 
 * @param heap 
 * @param Dist
 * @return int 
 */
int DeleteMin(int* heap,int * Dist);



//Fibonacci heap 的相关声明

typedef struct Fibonacci_Node{
    int value;                              //the value of the node
    int degree;                             //number of the children
    int mark;                               //the flag of whether the children was deleted
    struct Fibonacci_Node* left;
    struct Fibonacci_Node* right;
    struct Fibonacci_Node* child;           //node of the first child
    struct Fibonacci_Node* parent;          //node of the parent
}FibonacciNode;
typedef FibonacciNode* PtrFibonacciNode;    //pointer

typedef struct Fibonacci_Heap{
    int number;                             //the number of the nodes
    int maxdegree;                          //the max degree number
    PtrFibonacciNode min;                   //the pointer of the minimum
    PtrFibonacciNode *tmp;                  //tempary heap
}FibonacciHeap;
typedef FibonacciHeap* PtrFibonacciHeap;    //pointer



PtrFibonacciHeap BuildFibonacciHeap(); //initialize the empty heap


void InsertFibonacciHeap(PtrFibonacciHeap MyHeap,int value,int * Dist); //Insertion

int DeleteminFibonacciHeap(PtrFibonacciHeap MyHeap,int * Dist); //DeleteMin

void AddRoot(PtrFibonacciNode Node,PtrFibonacciNode Root); //Add the node to the root linked list

void ConsolidateFibonacciHeap(PtrFibonacciHeap MyHeap,int * Dist); //Consolidate the tree of the same number node

PtrFibonacciNode RemoveMinNode(PtrFibonacciHeap MyHeap); //Remove the min tree from the heap

void FreeNode(PtrFibonacciNode Node); //free the node space

void FreeHeap(PtrFibonacciHeap MyHeap); //free the whole heap space


#endif
