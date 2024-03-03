#include <stdio.h>
#include <stdlib.h>
#include "../include/bstree.h"

PtrBST_Node InsertBST_Node(PtrBST_Node node,int num)
{
    if(!node){
        node = (PtrBST_Node)malloc(sizeof(BST_Node));
        node->height = 1;
        node->left = NULL;
        node->right = NULL;
        node->value = num;
    }else{
        if(node->value > num){
            node->left = InsertBST_Node(node->left,num);
        }else{
            node->right = InsertBST_Node(node->right,num);
        }
    }
    node->height = MAX(HeightBST(node->left),HeightBST(node->right)) + 1;  //Update the height
    return node;
}

PtrBST_Node DeleteBST_Node(PtrBST_Node node,int num)
{
    PtrBST_Node Tmp;
    int flag = 0;      //the flag of the leaf
    if(!node) return NULL;// printf("Can't find the element int the BST!\n");
    else if(num < node->value){
        node->left = DeleteBST_Node(node->left,num);
    }else if(num > node->value){
        node->right = DeleteBST_Node(node->right,num);
    }else{
        if(node->left && node->right){  //The node has two children
            if(node->left->height > node->right->height){
                Tmp = FindMaxBST(node->left);
                node->value = Tmp->value;
                node->left = DeleteBST_Node(node->left,node->value);
            }else{
                Tmp = FindMinBST(node->right);
                node->value = Tmp->value;
                node->right = DeleteBST_Node(node->right,node->value);
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
    if(!flag) node->height = MAX(HeightBST(node->left),HeightBST(node->right)) + 1;  //Update the height
    return node;
}

PtrBST_Node FindkeyBST_Node(PtrBST_Node node,int num)
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

int HeightBST(PtrBST_Node node)
{
    if(node == NULL){
        return 0;
    }else{
        return node->height;
    }
}

PtrBST_Node FindMinBST(PtrBST_Node node)
{
    if(node){
        while(node->left) node = node->left;
    }
    return node;
}

PtrBST_Node FindMaxBST(PtrBST_Node node)
{
    if(node){
        while(node->right) node = node->right;
    }
    return node;
}
