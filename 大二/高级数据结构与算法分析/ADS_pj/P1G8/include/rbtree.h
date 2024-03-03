#ifndef _RBTREE_H_
#define _RBTREE_H_

typedef struct RBnode *RBptr;
struct RBnode{
	int num;
	int color;                          //1表示红，2表示黑 
	RBptr left;
	RBptr right;
};
/**
 * @brief 
 * Create a new node,when we init a tree,the num will be -1
 * @param num 
 * @return RBptr 
 */
RBptr RBNewNode(int num);

/**
 * @brief 
 * 
 * @param u 
 * @param v 
 * @return RBptr 
 */
RBptr LeftRotate(RBptr u , RBptr v);

/**
 * @brief 
 * 
 * @param u 
 * @param v 
 * @return RBptr 
 */
RBptr RightRotate(RBptr u , RBptr v);

/**
 * @brief 
 * Find a key in the rb_tree.
 * @param num 
 * @param T 
 * @return RBptr 
 */
RBptr RBFindKey(int num , RBptr T);

/**
 * @brief 
 * Insert a new number.
 * @param num 
 * @param T 
 * @return RBptr 
 */
RBptr RBInsert(int num , RBptr T);

/**
 * @brief 
 * Delete a key.
 * @param num 
 * @param T 
 * @return RBptr 
 */
RBptr RBDelete(int num , RBptr T);

/**
 * @brief 
 * Get the Height object
 * @param T 
 * @return int 
 */
int GetHeight(RBptr T);

/**
 * @brief 
 * Traversal of red-black tree in level order
 * @param T 
 */
void Levelorder(RBptr T);

#endif