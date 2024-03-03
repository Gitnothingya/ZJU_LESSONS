#ifndef _SPLAYTREE_H_
#define _SPLAYTREE_H_

typedef struct splaynode* splayP;
typedef struct splaynode{
    int value;
    splayP left;
    splayP right;
    splayP parent;//make it easy to adjust the splay tree.
} splaynode;

splayP newsplaynode();//create a new splay node

/**
 * @brief 
 * insert a node using s_insert(),
 * then adjust the tree and return the root.
 * @param T 
 * @param num 
 * @return splayP 
 */
splayP S_Insertion(splayP T,int num);

/**
 * @brief 
 * just insert a new number into the tree like bst,no splay.
 * @param T 
 * @param num 
 * @return splayP 
 */
splayP s_insert(splayP T,int num);

/**
 * @brief 
 * make the node whose key is num be the root
 * @param T 
 * @param num 
 * @return splayP 
 */
splayP Splay(splayP T,int num);

/**
 * @brief 
 * six type of rotation.
 * @param node 
 * @return splayP 
 */
splayP SR_left_single(splayP node);
splayP SR_right_single(splayP node);
splayP SR_left_zigzig(splayP node);
splayP SR_right_zigzig(splayP node);
splayP SR_rl_zigzag(splayP node);
splayP SR_lr_zigzag(splayP node);
/**
 * @brief 
 * delete a tree node whose key is num.
 * @param T 
 * @param num 
 * @return splayP 
 */
splayP S_Deletion(splayP T,int num);
/**
 * @brief 
 * find the minimum of a tree whose root is T,
 * it is used in Deletion to find the minimum in the leftchild of root.
 * @param T 
 * @return int 
 */
int FindMax(splayP T);

/**
 * @brief 
 * get the height of the tree.
 * @param T 
 * @return int 
 */
int S_GetHeight(splayP T);
#endif