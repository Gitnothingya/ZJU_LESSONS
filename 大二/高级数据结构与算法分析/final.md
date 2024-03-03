---
typora-copy-images-to: images
typora-root-url: ./
---

[TOC]

### AVL

#### 知识点

![QQ图片20220621203418](/images/QQ图片20220621203418.jpg)

![QQ图片20220621203432](/images/QQ图片20220621203432.jpg)

#### pta

![image-20220621203708146](/images/image-20220621203708146.png)

PS:是指AVL插入不一定会造成不平衡？

![image-20220621203818818](/images/image-20220621203818818.png)

PS:插入最多两次旋转可以解决，但最初造成的不平衡节点不止两个，实际上像对于最小AVL来说，在最底层造成不平衡会导致所有父祖节点不平衡。

![image-20220621204036093](/images/image-20220621204036093.png)

PS:一次操作最多影响高度+-1，可能的情况只有删除本就较矮的子树的节点，由于高子树无影响，根节点高度不变。

![image-20220621204349224](/images/image-20220621204349224.png)

PS：也是与插入相反，当前最多一个，但是随着调整可能出现很多个。

![image-20220621204522017](/images/image-20220621204522017.png)

#### 书上代码

```c
static int Height( Position P )
{
f( Position P)
	return -1;
else
	return P->Height;
}

AvlTree Insert( E7ementType X, Av1Tree T )
{
	if(T == NULL)
	{
		/* Create and return a one-node tree */
		T = ma11oc( sizeof( struct AvlNode ) );
		if(T == NULL)
  			FatalError( "Out of space!!!" );
		else
    	{
  			T->Element = X; T->Height = 0;
			T->Left = T->Right = NULL;
		}
	else if( X < T->Element )
    {
		T->Left = Insert( X, T->Left );
		if( Height( T->Left ) - Height( T->Right ) == 2 )
			if( X < T->Left->ETement )
			T = Sing1eRotateWithLeft( T );
		else
			T = DoubleRotateWithLeft( T );
	}
	else if( X > T->Element )
    {
		T->Right = Insert( x，T->Right );
		if( Height( T->Right ) - Height( T->Left ) == 2 )
			if( X > T->Right->Element )
				T = SingleRotatewithRight( T );
			else
				T = DoubleRotateWithRight( T );
    }
	/*E1se X is in the tree already; we'1l do nothing */
  T-Height = Max( Height( T->Left ), Height( T->Right ) ) + 1;
	return T:
}
```

### B+

#### 知识点

**M阶B+树定义**

>根节点是叶节点或者根节点有2~M 个儿子
>
>根以外的非叶节点有 $\lceil M/2 \rceil$ ~ M 个儿子，每个非根叶节点内含$\lceil M/2 \rceil$~M个元素。
>
>所有的叶节点的深度相同。
>
>* 非叶节点key数量比儿子（指针）数量少1。
>
>* order3的被称为2-3 tree 
>
>* B+树的关键字可在中间节点出现多次，（B-树只能一次？）

**复杂度**

> * 对于order M， 有N个元素的B+树而言$ T_{find}(M,N)=O((M/log{M})*log{N})=O(log{N}) $
> * B+树的深度 $Depth(M,N)=O(\lceil log_{\lceil M/2 \rceil} {N}\rceil) $, 找到插入位置的事件复杂度是log N
>
> ![image-20220621212318132](/images/image-20220621212318132.png)
>
> * 对于order3的B+树而言，非叶节点的索引个数在有三个儿子时需要两个，否则只需要一个索引

**插入伪代码**

```c++
Btree Insert ( ElementType X, Btree T )
{
	Search from root to leaf for X and find the proper leaf node;
	Insert X;
	while ( this node has M+1 keys ) {
		split it into 2 nodes with [(M+1)/2] and [(M+1)/2] keys, respectively;
		if (this node is the root)
			create a new root with two children;
		check its parent;
	}
}
//算法的描述：找到合适的位置先插入，如果叶节点的keys数量超过了M，则分裂成两个，然后向上继续合并和拆分
```

#### pta

![image-20220621212507189](/images/image-20220621212507189.png)

### R-B Tree

#### 知识点

**定义**

>* 红黑树是一种二叉搜索树，并且节点的颜色为红色或者黑色
>* 红黑树的根节点是黑色
>* 叶节点都是黑色的(叶节点是NULL的时候把NULL也视为黑色的节点，视null为最终叶节点)
>* 红色节点的两个儿子一定都是黑色节点
>* 对于每一个节点，所有的从该节点出发到达后代的叶节点的简单路径包含相同数量的黑色节点

**黑高（black height ）**

>- 节点的black height表示从x到叶节点的路径中黑色节点的个数
>- 有N个（内部？）节点的红黑树的高度最多为$ 2*log(N+1)$
>- $bh(Tree)>=h(Tree)/2$

**操作**

>![image-20220621215135733](/images/image-20220621215135733.png)
>
>红黑树对删除的旋转调整有了限制

>**插入**
>
>![2392382-9ac3d6b69ef7ead3](/images/2392382-9ac3d6b69ef7ead3.png)
>
>![2392382-fa2b78271263d2c8](/images/2392382-fa2b78271263d2c8.webp)
>
>4.1
>
>![2392382-5374ea3c2956b441](/images/2392382-5374ea3c2956b441.webp)
>
>
>
>![2392382-9f2c746bf0769f49](/images/2392382-9f2c746bf0769f49.webp)
>
>可以看到，我们把PP结点设为红色了，如果PP的父结点是黑色，那么无需再做任何处理；但如果PP的父结点是红色，根据性质4，此时红黑树已不平衡了，所以还需要把PP当作新的插入结点，继续做插入操作自平衡处理，直到平衡为止。
>
>4.2
>
>叔叔节点其实必不可能为黑节点
>
>4.2.1
>
>![2392382-ab4097b750826870](/images/2392382-ab4097b750826870.webp)
>
>可以把P设为红色，I和PP设为黑色吗？可以，但没必要。会造成需要继续处理的情况
>
>4.2.2
>
>![2392382-fbfc4f299941cb8b](/images/2392382-fbfc4f299941cb8b.webp)
>
>4.3.1
>
>![2392382-2bc24a78b68dae51](/images/2392382-2bc24a78b68dae51.webp)
>
>4.3.2
>
>![2392382-ee1a9027ddcc210a](/images/2392382-ee1a9027ddcc210a.webp)
>
>图源网络：[30张图带你彻底理解红黑树 - 简书 (jianshu.com)](https://www.jianshu.com/p/e136ec79235c)

>删除
>
>三种情况
>
>* 情景1：若删除结点无子结点，直接删除
>* 情景2：若删除结点只有一个子结点，用子结点替换删除结点
>* 情景3：若删除结点有两个子结点，用后继结点（大于删除结点的最小结点）替换删除结点
>
>![2392382-edaf96e55f08c198](/images/2392382-edaf96e55f08c198.webp)
>
>太难了，应该不考这么细吧……

### Splay Tree

主要是伸展（旋转），基本上与AVL树相同，但是zig-zig情况（同边节点向上两个位置）有所不同，AVL树实际无这种情况，统一当只爬一个位置（单旋转）逐步处理（自己向父亲旋转，再向祖父旋转），而zig-zig则是先让父节点旋转，再自己旋转。

![1655822069179](/images/1655822069179.jpg)

zig-zag实际为双旋转

### Leftist Heap 左倾堆

Target : **Speed up merging in O(N)**

定义**NPL(NULL path length)**:某一结点到没有两个儿子的子节点的最短值。**Npl(NULL) = –1.**

$Npl(X) = min \{ Npl(C) + 1  \}$for all C as children of X.

> 性质
>
> * 节点的左孩子的NPL >= 右孩子的NPL。
> * 节点的NPL = 它的右孩子的NPL + 1。

>定理
>
>* 最短路径为右路径（一路向右），右路径有 r 个节点则树至少有 $2^r - 1$个节点
>* 有N个节点的左偏树右路径上最多有 $$\lfloor log(N+1) \rfloor$$ 个节点。与上⼀条等价。

>插入与合并（Insertion is merely a special case of merging）
>
>**递归方法**
>
>根节点大的向根节点小的进行合并
>
>![image-20220621230242319](/images/image-20220621230242319.png)
>
>```c
>PriorityQueue  Merge ( PriorityQueue H1, PriorityQueue H2 )
>{ 
>	if ( H1 == NULL )   return H2;	
>	if ( H2 == NULL )   return H1;	
>	if ( H1->Element < H2->Element )  return Merge1( H1, H2 );
>	else return Merge1( H2, H1 );
>}
>
>static PriorityQueue
>Merge1( PriorityQueue H1, PriorityQueue H2 )
>{ 
>	if ( H1->Left == NULL ) 	/* single node */
>		H1->Left = H2;	/* H1->Right is already NULL 
>				    and H1->Npl is already 0 */
>	else {
>		H1->Right = Merge( H1->Right, H2 );     /* Step 1 & 2 */
>		if ( H1->Left->Npl < H1->Right->Npl )
>			SwapChildren( H1 );	/* Step 3 */
>		H1->Npl = H1->Right->Npl + 1;
>	} /* end else */
>	return H1;
>}
>/*
>3 6合并
>3right son 8 6 merge
>		   6 8 merge1
>6right son 7 8 merge and merge1
>7right son 18 8 merge
>		   8 18 merge1
>8right son null 18 merge 
>		   return 18
>逐步递归置最右，大的依附小的，如果npl不对，父节点左右儿子交换位置
>*/
>
>PriorityQueue
>Insert( ElementType X, PriorityQueue H )x
>{
>PriorityQueue SingleNode;
>
>SingleNode = malloc( sizeof( struct TreeNode));
>if( SingleNode == NULL)
>	FatalError("Out of space!!!");
>else {
>   SingleNode -> Element = X; SingleNode->Npl = 0;
>   SingleNode->Left = SingleNode->Right = NULL
>   H = Merge(SingleNode, H);
>}
>return H;
>}
>
>```
>
>**迭代方法**
>
>![image-20220621232809962](/images/image-20220621232809962.png)
>
>* 根据两棵左偏树右路径上的节点（每个节点带上其左⼦树）按照从小到大的顺序合并
>* 然后从⽣成的树自底向上检验值
>
>```c
>PriorityQueue DeleteMin1(PriorityQueue H)
>{
>    PriorityQueue LeftHeap, RightHeap;
>    if( IsEmpty( H ) ){
>        Error("Priority queue is empty");
>        return H;
>    }
>    LeftHeap = H->Left;
>    RightHeap = H->Right;
>    free(H);
>    return Merge(LeftHeap, RightHeap);
>}
>```
>
>

**时间复杂度**

递归：由于右路径的⻓度是$O(log(N))$，所以时间复杂度为右路径长度之和，也为$O(log(N))$

非递归：合并的时间复杂度为$O(log(N))$，⾃底向上检验Npl值的时间复杂度也为$O(log(N))$

### Skew Heap

Target : Any M consecutive(连续的) operations take at most O(Mlog N) time.

斜堆(Skew heap)也叫自适应堆(self-adjusting heap)，它是左倾堆的一个变种。和左倾堆一样，它通常也用于实现优先队列；作为一种自适应的左倾堆，它的合并操作的时间复杂度也是O(lg n)。

>**Merge:** **Always** **swap the left and right children except that the** **largest** **of all the nodes on the right paths does not have its children swapped.**No Npl.
>
>**Skew heaps have the advantage that** **no extra space** **is required to maintain path lengths and** **no tests** **are required to determine when to swap children.**

时间复杂度分析：

>![image-20220623222134094](D:\1学习文件\高级数据结构与算法分析\images\image-20220623222134094.png)
>
>重节点：右子树的节点数至少是整棵树的一半；
>
>![image-20220623222939597](D:\1学习文件\高级数据结构与算法分析\images\image-20220623222939597.png)
>
>**The only nodes whose heavy/light status can change are nodes that are** **initially on the right path****.**



>!!!!!  a tree with k light nodes on its right path has at least 2k-1 nodes



### Binomial Queue 二项队列 

**定义**

>* A binomial queue is not a heap-ordered tree, but rather a collection of heap-ordered trees, known as a forest. Each heap-ordered tree is a binomial tree.
>* A binomial tree of height 0 is a one-node tree.
>* A binomial tree,$B_k$ , of height is formed by attaching a binomial tree, $B_{k-1}$, to the root of another binomial tree,$B_{k-1}$ .

>**A priority queue of** **any size** **can be** **uniquely** **represented by a** **collection of binomial trees.**
>
>

**operation**

* FindMin
  * 最小值⼀定为⼆项队列中⼀棵树的根节点，最多有$\lceil log(N) \rceil$个根节点，所以其时间复杂度为$O(log N)$。
* Merge
  * 从高度小的树加到高度大的树，类似⼆进制加法。
  * 时间复杂度与两个⼆项队列中树的数目有关，为$O(logN)$.
* Insert
  * 特殊的merge
  * 如果当前⼆项队列中最小的不存在的树为$B_i$，则时间开销为$T = Cost * (i+1)$
  * 进行$N$次插⼊操作的最坏时间复杂度为$O(N)$，所以每次插⼊的均摊时间复杂度为$O(1)$.
* DeleteMin
  * 第⼀步，FindMin，设其为$B_i$的根节点.
  * 从⼆项队列中移除$B_i$，设新的⼆项队列为$H'$，把$B_i$根节点的所有⼦树作为⼀个新的⼆项队列$H''$。
  * 合并$H'$和$H''$。
  * 时间复杂度$T=O(logN)+O(1)+O(logN)+O(logN)=O(logN)$，分别对应FindMin，删除$B_i$⽣成$H''$，合并$H'$和p$H''$。

**实现**

更快遍历子树，使用左儿子右兄弟结构

>merge
>
>让⼦树按照⾼度排序：合并时，新⽣成的树⼀定是最⼤的，所以按照树的⾼度从低到
>⾼，在数组中从⼩到⼤，进⾏排列。对于每⼀个⼦树内部，根节点的⼦树也要从⾼度⾼的到⾼度低到进⾏排序，这样是为了⽅便合并。
>需要保证$T_1$的根节点的值⼩于$T_2$，也就是说把$T_2$变成$T_1$的⼦树。让$T_2$的右兄弟指向
>的$T_1$左⼉⼦，然后把的$T_1$左⼉⼦变成$T_2$。时间复杂度为$O(1)$。

```c
typedef struct BinNode *Position;
typedef struct Collection *BinQueue;
typedef struct BinNode *BinTree;

struct BinNode
{
	int Element;
	Postion LeftChild;
	Postion NextSibling;
}
struct Collection
{
	int CurrentSize; /* total number of nodes */
	BinTree TheTrees[ MaxTrees ];
} ;

BinTree CombineTrees(BinTree T1, BinTree T2)
{ 	/* merge equal-sized T1 and T2 */
	if(T1->Element > T2->Element)
	/* attach the larger one to the smaller one */
		return CombineTrees( T2, T1 );
	/* insert T2 to the front of the children list of T1 */
	T2->NextSibling = T1->LeftChild;
	T1->LeftChild = T2;
	return T1;
}


BinQueue Merge(BinQueue H1, BinQueue H2)
{
	BinTree T1, T2, Carry = NULL;
	int i, j;
	if(H1->CurrentSize + H2-> CurrentSize > Capacity) 
        ErrorMessage();
	H1->CurrentSize += H2-> CurrentSize;
	for(i = 0, j = 1; j <= H1->CurrentSize; i++, j *= 2) {
		T1 = H1->TheTrees[i]; T2 = H2->TheTrees[i]; /*current trees */
		switch(4*!!Carry + 2*!!T2 + !!T1) {
			case 0: /* 000 */
			case 1: /* 001 */ break;
			case 2: /* 010 */ H1->TheTrees[i] = T2; H2->TheTrees[i] = NULL;break;
			case 4: /* 100 */ H1->TheTrees[i] = Carry; Carry = NULL; break;
			case 3: /* 011 */ Carry = CombineTrees(T1, T2);
				H1->TheTrees[i] = H2->TheTrees[i] = NULL; break;
			case 5: /* 101 */ Carry = CombineTrees(T1, Carry);
				H1->TheTrees[i] = NULL; break;
			case 6: /* 110 */ Carry = CombineTrees(T2, Carry);
				H2->TheTrees[i] = NULL; break;
			case 7: /* 111 */ H1->TheTrees[i] = Carry;
				Carry = CombineTrees(T1, T2);
				H2->TheTrees[i] = NULL; break;
		} /* end switch */
	} /* end for-loop */
	return H1;
}



ElementType DeleteMin(BinQueue H)
{
	BinQueue DeletedQueue;
	Position DeletedTree, OldRoot;
	ElementType MinItem = Infinity; /* the minimum item to be returned */
	int i, j, MinTree; /* MinTree is the index of the tree with the minimum item
*/
	if (IsEmpty(H)) {
		PrintErrorMessage();
		return –Infinity;
	}
	for(i = 0; i < MaxTrees; i++) { /* Step 1: find the minimum item */
		if( H->TheTrees[i] && H->TheTrees[i]->Element < MinItem ) {
			MinItem = H->TheTrees[i]->Element; MinTree = i;
		} /* end if */
	} /* end for-i-loop */
	DeletedTree = H->TheTrees[MinTree];
	H->TheTrees[MinTree] = NULL; /* Step 2: remove the MinTree from H => H’ */
	OldRoot = DeletedTree; /* Step 3.1: remove the root */
	DeletedTree = DeletedTree->LeftChild; free(OldRoot);
	DeletedQueue = Initialize(); /* Step 3.2: create H” */
    DeletedQueue->CurrentSize = (1 << MinTree) – 1; /* 2^MinTree – 1 */
	for(j = MinTree – 1; j >= 0; j––) {
		DeletedQueue->TheTrees[j] = DeletedTree;
		DeletedTree = DeletedTree->NextSibling;
		DeletedQueue->TheTrees[j]->NextSibling = NULL;
	} /* end for-j-loop */
	H->CurrentSize –= DeletedQueue->CurrentSize + 1;
	H = Merge(H, DeletedQueue); /* Step 4: merge H’ and H” */
	return MinItem;
}    
```

**时间复杂度**

![image-20220623225157914](D:\1学习文件\高级数据结构与算法分析\images\image-20220623225157914.png)

## 算法 分析

### 均摊分析







### 回溯剪枝 Backtracking







### 分治法 Divide and Conquer







### 动态规划 Dynamic Programming

#### 斐波那契数列计算

>常见递归算法造成了冗余计算，使得时间爆炸
>
>将数据存储起来重复利用.
>
>```c
>int  Fibonacci ( int N ) 
>{   int  i, Last, NextToLast, Answer; 
>    if ( N <= 1 )  return  1; 
>    Last = NextToLast = 1;    /* F(0) = F(1) = 1 */
>    for ( i = 2; i <= N; i++ ) { 
>        Answer = Last + NextToLast;   /* F(i) = F(i-1) + F(i-2) */
>        NextToLast = Last; Last = Answer;  /* update F(i-1) and F(i-2) */
>    }  /* end-for */
>    return  Answer; 
>}
>
>T(N) = O(N)
>```

#### 矩阵乘法

>不同矩阵不能调换位置，但是矩阵的乘法可以按不同顺序结合。
>
>n个矩阵的计算方法（顺序）数：
>
>







### 倒排索引

搜索引擎：存储、相关性、分类索引排放

检索：

>**Solution 1:** **Scan each page for the string "Computer Science".**
>
>solution 2:建立文档和单词的矩阵。**Term-Document Incidence Matrix**
>
>![image-20220624090118522](D:\1学习文件\高级数据结构与算法分析\images\image-20220624090118522.png)
>
>极其稀疏，浪费空间
>
>solution 3：倒排索引
>
>![image-20220624090411881](D:\1学习文件\高级数据结构与算法分析\images\image-20220624090411881.png)
>
>![image-20220624090702499](D:\1学习文件\高级数据结构与算法分析\images\image-20220624090702499.png)
>
>term ：关键字
>
>记录 词频，文档+位置
>
>![image-20220624090940470](D:\1学习文件\高级数据结构与算法分析\images\image-20220624090940470.png)
>
>stop wors：停用词，
>
>![image-20220624091250552](D:\1学习文件\高级数据结构与算法分析\images\image-20220624091250552.png)
>
>term的存储：
>
>solution：search tree, hashing
>
>![image-20220624091919184](D:\1学习文件\高级数据结构与算法分析\images\image-20220624091919184.png)
>
>分布式索引：
>
>![image-20220624092301489](D:\1学习文件\高级数据结构与算法分析\images\image-20220624092301489.png)
>
>动态索引：缓冲区原理，并不会实时更新文档的修改
>
>![image-20220624093203986](D:\1学习文件\高级数据结构与算法分析\images\image-20220624093203986.png)
>
>
>
>Ranking:
>
>![image-20220624094240832](D:\1学习文件\高级数据结构与算法分析\images\image-20220624094240832.png)
>
>相关性：
>
>benchmark:即测试的样例集？
>
>Retrieved:检索到的数据
>
>Relevant:相关的
>
>Precision:精度，相关数据/所有检索到的
>
>recall：召回，相关数据/所有相关数据
>
>![image-20220624095059042](D:\1学习文件\高级数据结构与算法分析\images\image-20220624095059042.png)
>
>



### 贪心算法

>仅在局部最优=全局最优时才能得到最优解
>
>不保证给出最优解，但是给出的阶近似最优解且代价不大

#### 活动选择问题

选出尽可能多的可进行活动。

>**solution 1:**DP
>
>![image-20220624101832387](D:\1学习文件\高级数据结构与算法分析\images\image-20220624101832387.png)

>**solution 2:**
>
>贪心策略、资源……
>
>选择最早结束的活动，时间就是资源，这样剩下的资源就多
>
>其余策略
>
>![image-20220624102343287](D:\1学习文件\高级数据结构与算法分析\images\image-20220624102343287.png)
>
>![image-20220624102352467](D:\1学习文件\高级数据结构与算法分析\images\image-20220624102352467.png)

#### 霍夫曼编码

>文档压缩，不等长编码，高频词字符少，低频词字符多
>
>没有任何一个编码是另一串编码的前k位
>
>从根节点遍历，直到叶子节点可得字符的编码
>
>创建霍夫曼树：选最小频率的两个树（节点）进行合并



### NP问题

>~~碰到就寄~~
>
>![image-20220624100407450](D:\1学习文件\高级数据结构与算法分析\images\image-20220624100407450.png)
>
>![image-20220624100416379](D:\1学习文件\高级数据结构与算法分析\images\image-20220624100416379.png)
>
>约化：
>
>![image-20220624100508122](D:\1学习文件\高级数据结构与算法分析\images\image-20220624100508122.png)
>
>常见NPC问题
>
>![image-20220624100537164](D:\1学习文件\高级数据结构与算法分析\images\image-20220624100537164.png)

### 近似算法





### 局部搜索



### 随机算法



### 并行算法





### 外部排序









































































