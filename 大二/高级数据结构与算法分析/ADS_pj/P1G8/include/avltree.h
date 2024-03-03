#ifndef _AVLTREE_H_
#define _AVLTREE_H_

#define MAX(num1,num2) ((num1)>(num2)?(num1):(num2))  //The comparison returning the max number

typedef struct AVLTreeNode{
    int value;
    int height;  //The height of the node
    struct AVLTreeNode* left;
    struct AVLTreeNode* right;
}AVLTree_Node;

typedef AVLTree_Node* PtrAVLTree_Node;  //Pointer

/**
 * @brief 
 * insert a new node
 * @param node 
 * @param num 
 * @return PtrAVLTree_Node 
 */
PtrAVLTree_Node InsertAVLTree_Node(PtrAVLTree_Node node,int num);

/**
 * @brief 
 * Delete
 * @param node 
 * @param num 
 * @return PtrAVLTree_Node 
 */
PtrAVLTree_Node DeleteAVLTree_Node(PtrAVLTree_Node node,int num);

/**
 * @brief 
 * Search
 * @param node 
 * @param num 
 * @return PtrAVLTree_Node 
 */
PtrAVLTree_Node FindkeyAVLTree_Node(PtrAVLTree_Node node,int num);

/**
 * @brief 
 * Calculate the height of the node
 * @param node 
 * @return int 
 */
int HeightAVLTree(PtrAVLTree_Node node);

/**
 * @brief 
 * Find the minimum of the AVL tree or Find the maximum of the AVL tree
 * @param node 
 * @return PtrAVLTree_Node 
 */
PtrAVLTree_Node FindMinAVLTree(PtrAVLTree_Node node);
PtrAVLTree_Node FindMaxAVLTree(PtrAVLTree_Node node);

/**
 * @brief 
 * four type of rotation
 * @param node 
 * @return PtrAVLTree_Node 
 */
PtrAVLTree_Node SingleLeftRot(PtrAVLTree_Node node);  //LL Rotation
PtrAVLTree_Node SingleRightRot(PtrAVLTree_Node node);  //RR Rotation
PtrAVLTree_Node DoubleLeftRot(PtrAVLTree_Node node);  //LR Rotation
PtrAVLTree_Node DoubleRightRot(PtrAVLTree_Node node);  //RL Rotation


#endif