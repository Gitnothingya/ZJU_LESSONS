#include <stdio.h>
#include <stdlib.h>
#include "../include/avltree.h"
PtrAVLTree_Node InsertAVLTree_Node(PtrAVLTree_Node node,int num)
{
    if(!node){
        node = (PtrAVLTree_Node)malloc(sizeof(AVLTree_Node));
        node->height = 1;
        node->left = NULL;
        node->right = NULL;
        node->value = num;
    }else{
        if(node->value > num){
            node->left = InsertAVLTree_Node(node->left,num);
            if(HeightAVLTree(node->left) - HeightAVLTree(node->right) > 1){  //Determine if the tree is unbalanced
                if(num < node->left->value) node = SingleLeftRot(node);
                else node = DoubleLeftRot(node);
            }
        }else{
            node->right = InsertAVLTree_Node(node->right,num);
            if(HeightAVLTree(node->right) - HeightAVLTree(node->left) > 1){  //Determine if the tree is unbalanced
                if(num > node->right->value) node = SingleRightRot(node);
                else node = DoubleRightRot(node);
            }
        }
    }
    node->height = MAX(HeightAVLTree(node->left),HeightAVLTree(node->right)) + 1;  //Update the height
    return node;
}

PtrAVLTree_Node DeleteAVLTree_Node(PtrAVLTree_Node node,int num)
{
    PtrAVLTree_Node Tmp;  //Temp node
    int flag = 0;       //the flag of the leaf
    if(!node) {return node;printf("Can't find the element int the BST!\n");}///////////////////////////////////////////////////////////////////
    else if(num < node->value){
        node->left = DeleteAVLTree_Node(node->left,num);
        if(HeightAVLTree(node->right) - HeightAVLTree(node->left) > 1){  //After the deletion,Determine if the tree is unbalanced
            if(HeightAVLTree(node->right->right) >= HeightAVLTree(node->right->left)) node = SingleRightRot(node);
            else node = DoubleRightRot(node);
        }
    }else if(num > node->value){
        node->right = DeleteAVLTree_Node(node->right,num);
        if(HeightAVLTree(node->left) - HeightAVLTree(node->right) > 1){  //After the deletion,Determine if the tree is unbalanced
            if(HeightAVLTree(node->left->left) >= HeightAVLTree(node->left->right)) node = SingleLeftRot(node);
            else node = DoubleLeftRot(node);
        }
    }else{
        if(node->left && node->right){  //The node has two children
            if(node->left->height > node->right->height){
                Tmp = FindMaxAVLTree(node->left);
                node->value = Tmp->value;
                node->left = DeleteAVLTree_Node(node->left,node->value);
                if(HeightAVLTree(node->right) - HeightAVLTree(node->left) > 1){  //After the deletion,Determine if the tree is unbalanced
                    if(HeightAVLTree(node->right->right) >= HeightAVLTree(node->right->left)) node = SingleRightRot(node);
                    else node = DoubleRightRot(node);
                }
            }else{
                Tmp = FindMinAVLTree(node->right);
                node->value = Tmp->value;
                node->right = DeleteAVLTree_Node(node->right,node->value);
                if(HeightAVLTree(node->left) - HeightAVLTree(node->right) > 1){  //After the deletion,Determine if the tree is unbalanced
                    if(HeightAVLTree(node->left->left) >= HeightAVLTree(node->left->right)) node = SingleLeftRot(node);
                    else node = DoubleLeftRot(node);
                }
            }
        }else{
            Tmp = node;
            if(!node->left && !node->right) flag = 1;  //The node is a leaf
            if(!node->left){
                node = node->right;
            }else if(!node->right){
                node = node->left;
            }
            free(Tmp);  //Free the space
        }
    }
    if(!flag) node->height = MAX(HeightAVLTree(node->left),HeightAVLTree(node->right)) + 1;  //Update the height
    return node;
}

PtrAVLTree_Node FindkeyAVLTree_Node(PtrAVLTree_Node node,int num)
{
    while(node){
        if(num > node->value){
            node = node->right;
        }else if(num < node->value){
            node = node->left;
        }else{
            return node;
        }
    }
    return NULL;  //Can't find the node
}

int HeightAVLTree(PtrAVLTree_Node node)
{
    if(node == NULL){
        return 0;
    }else{
        return node->height;
    }
}

PtrAVLTree_Node FindMinAVLTree(PtrAVLTree_Node node)
{
    if(node){
        while(node->left) node = node->left;
    }
    return node;
}

PtrAVLTree_Node FindMaxAVLTree(PtrAVLTree_Node node)
{
    if(node){
        while(node->right) node = node->right;
    }
    return node;
}

PtrAVLTree_Node SingleLeftRot(PtrAVLTree_Node node)
{
    PtrAVLTree_Node newNode;  //Temp node
    newNode = node->left;
    node->left = newNode->right;
    newNode->right = node;
    node->height = MAX(HeightAVLTree(node->left),HeightAVLTree(node->right)) + 1; //Update the height
    newNode->height = MAX(HeightAVLTree(newNode->left),HeightAVLTree(newNode->right)) + 1;  //Update the height
    return newNode;
}

PtrAVLTree_Node SingleRightRot(PtrAVLTree_Node node)
{
    PtrAVLTree_Node newNode;  //Temp node
    newNode = node->right;
    node->right = newNode->left;
    newNode->left = node;    
    node->height = MAX(HeightAVLTree(node->left),HeightAVLTree(node->right)) + 1;  //Update the height
    newNode->height = MAX(HeightAVLTree(newNode->left),HeightAVLTree(newNode->right)) + 1;  //Update the height
    return newNode;
}

PtrAVLTree_Node DoubleLeftRot(PtrAVLTree_Node node)
{
    node->left = SingleRightRot(node->left);
    PtrAVLTree_Node newNode = SingleLeftRot(node);
    return newNode;
}

PtrAVLTree_Node DoubleRightRot(PtrAVLTree_Node node)
{
    node->right = SingleLeftRot(node->right);
    PtrAVLTree_Node newNode = SingleRightRot(node);
    return newNode;
}
