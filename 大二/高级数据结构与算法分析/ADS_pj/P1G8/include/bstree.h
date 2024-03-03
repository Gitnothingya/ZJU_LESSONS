#ifndef _BSTREE_H_
#define _BSTREE_H_

#define MAX(num1,num2) ((num1)>(num2)?(num1):(num2))  //The comparison returning the max number

typedef struct BSTNode{
    int value;
    int height;  //The height of the node
    struct BSTNode* left;
    struct BSTNode* right;
}BST_Node;

typedef BST_Node* PtrBST_Node;  //Pointer

/**
 * @brief 
 * Insert
 * @param node 
 * @param num 
 * @return PtrBST_Node 
 */
PtrBST_Node InsertBST_Node(PtrBST_Node node,int num);

/**
 * @brief 
 * delete
 * @param node 
 * @param num 
 * @return PtrBST_Node 
 */
PtrBST_Node DeleteBST_Node(PtrBST_Node node,int num);

/**
 * @brief 
 * search
 * @param node 
 * @param num 
 * @return PtrBST_Node 
 */
PtrBST_Node FindkeyBST_Node(PtrBST_Node node,int num);  //Search

/**
 * @brief 
 * Calculate the height of the node
 * @param node 
 * @return int 
 */
int HeightBST(PtrBST_Node node);

/**
 * @brief 
 * Find the minimum of the BST
 * @param node 
 * @return PtrBST_Node 
 */
PtrBST_Node FindMinBST(PtrBST_Node node);

/**
 * @brief 
 * Find the maximum of the BST
 * @param node 
 * @return PtrBST_Node 
 */
PtrBST_Node FindMaxBST(PtrBST_Node node);


#endif