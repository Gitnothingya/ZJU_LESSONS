#include<stdio.h>
#include<stdlib.h>
#include "../include/splaytree.h"

splayP newsplaynode()
{
    splayP P=(splayP)malloc(sizeof(splaynode));
    P->left=P->right=NULL;
    return P;

}
splayP S_Insertion(splayP T,int num)
{
    splayP numP; 
    if(T==NULL){// insert into a null tree.
        T=newsplaynode();
        T->parent=NULL;
        T->value=num;
        return T;
    }
    numP= s_insert(T,num);// insert a new key to a not-null tree
    splayP rootP;
    rootP =Splay(T,num);// do splay operation 
    return rootP;
}
splayP s_insert(splayP T,int num)//do insertion in recursive way
{
    splayP P;
    if(T==NULL){
        return NULL;
    } 
    else if(num==T->value){
        return T;
    }
    else if(num>T->value){
        P=s_insert(T->right,num);
        if(P==NULL) {
            P=newsplaynode();
            P->value=num;
            P->parent=T;
            T->right=P;
        }
    }
    else if(num<T->value){
        P=s_insert(T->left,num);
        if(P==NULL) {
            P=newsplaynode();
            P->value=num;
            P->parent=T;
            T->left=P;
        }
    }
    return P;
}

splayP Splay(splayP T,int num)
{
    splayP P=T;
    while(1){//find the key
        if(P->value==num){
            break;
        }
        else if(P->value>num){
            if(P->left==NULL) break;
            P=P->left;
        }
        else if(P->value<num){
            if(P->right==NULL) break;
            P=P->right;
        }
    }
    while(1){// splay the key to root
        if(T->value==num)break;
        else if(P->parent==NULL){
            break;
        }
        splayP pa=P->parent;
        splayP gpa=pa->parent;
        if(T->left==P){//root's son
            P=SR_right_single(P);
            break;
        }
        else if(T->right==P){
            P=SR_left_single(P);
            break;
        }
        else if(P->value<pa->value&&pa->value<gpa->value){//the name shows all
            P=SR_right_zigzig(P);
        }
        else if(P->value>pa->value&&pa->value>gpa->value){//
            P=SR_left_zigzig(P);
        }
        else if(P->value>pa->value&&pa->value<gpa->value){//
            P=SR_lr_zigzag(P);
        }
        else if(P->value<pa->value&&pa->value>gpa->value){//
            P=SR_rl_zigzag(P);
        }
    }
    return P;
}

splayP SR_left_single(splayP node)
{
    splayP pa=node->parent;
    splayP gpa=pa->parent;

    pa->right=node->left;
    if(node->left)
        node->left->parent=pa;
    node->left=pa;
    pa->parent=node;
    node->parent=gpa;
    
    if(gpa){
        if(gpa->left==pa)
            gpa->left=node;
        else 
            gpa->right=node;
    }
    
    return node;
}
splayP SR_right_single(splayP node)
{
    splayP pa=node->parent;
    splayP gpa=pa->parent;

    pa->left=node->right;
    if(node->right)
        node->right->parent=pa;
    node->right=pa;
    pa->parent=node;
    node->parent=gpa;
    
    if(gpa){
        if(gpa->left==pa)
            gpa->left=node;
        else 
            gpa->right=node;
    }
    
    return node;
}
splayP SR_left_zigzig(splayP node)
{
    SR_left_single(node->parent);
    SR_left_single(node);
    return node;
}
splayP SR_right_zigzig(splayP node)
{
    SR_right_single(node->parent);
    SR_right_single(node);
    return node;
}
splayP SR_rl_zigzag(splayP node)
{
    SR_right_single(node);
    SR_left_single(node);
    return node;
}
splayP SR_lr_zigzag(splayP node)
{
    SR_left_single(node);
    SR_right_single(node);
    return node;
}

splayP S_Deletion(splayP T,int num)
{
    splayP P;
    P=Splay(T,num);// splay the key we want to delete to root 
    if(P->value!=num) {
        printf("404 Not Found");
        return P;
    }
    splayP Left=P->left,Right=P->right;
    free(P);
    P=NULL;
    int newroot;
    if(Left!=NULL){// the left tree will be root
        newroot=FindMax(Left);
        Left->parent=NULL;
        Left=Splay(Left,newroot);
        Left->right=Right;
        if(Right)Right->parent=Left;
        return Left;
    }
    else {
        if(Right) Right->parent=NULL;
        return Right;
    }
    
}
int FindMax(splayP T)
{
    if(T==NULL)return -1;
    splayP P;
    P=T;
    while(P->right!=NULL){
        P=P->right;
    }
    return P->value;
}

int S_GetHeight(splayP T)
{
    if(T==NULL)
        return 0;
    int height=0;
    splayP pstk[100000];
    int high[100000];
    int ptop=-1,htop=-1;
    
    pstk[++ptop]=T;
    high[++htop]=1;
    while(ptop!=-1){
        splayP node=pstk[ptop];
        pstk[ptop--]=NULL;
        int curhigh = high[htop];
        high[htop--]=0;

        if(node->right!=NULL){
            pstk[++ptop]=node->right;
            high[++htop]=curhigh+1;
        }
        if(node->left!=NULL){
            pstk[++ptop]=node->left;
            high[++htop]=curhigh+1;
        }
        if(node->right==NULL&&node->left==NULL){
            if(curhigh>height)
                height = curhigh;
        }
    }
    return height; 

}
