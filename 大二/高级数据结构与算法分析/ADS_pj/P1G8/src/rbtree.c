#include<stdio.h>
#include<stdlib.h>
#include "../include/rbtree.h"

RBptr RBNewNode(int num)						//定义root时将num设为-1 
{
	RBptr p;
	p = (RBptr)malloc(sizeof(struct RBnode));
	p->num = num;
	p->color = 1;
	p->left = p->right = NULL;
	return p;
}

RBptr LeftRotate(RBptr u , RBptr v)				//拎v 
{
    u->right = v->left;
    v->left = u;
    return v;
}

RBptr RightRotate(RBptr u , RBptr v)			//拎v 
{
    u->left = v->right;
    v->right = u;
    return v;
}

RBptr RBFindKey(int num , RBptr T)
{
	// if(T == NULL || num == T->num)
	// 	return T;
	// else if(num > T->num)
	// 	return RBFindKey(num , T->right);
	// else
	// 	return RBFindKey(num , T->left);
	while(T){
        if(num > T->num){
            T = T->right;
        }else if(num < T->num){
            T = T->left;
        }else{
            return T;
        }
    }
    return NULL;  //Can't find the node
}


RBptr RBInsert(int num , RBptr T)
{
	if(T->num == -1)							//还没插入过数 
	{
		T->num = num;
		T->color = 2;
		return T;
	}
	RBptr father = T , route[2000] = {NULL} , son = NULL , grandfather = NULL , uncle = NULL , temp = NULL;
	int count = -1;
	route[++count] = father;
	while(father->left!=NULL || father->right!=NULL)		//找到插入的位置 
	{
		if(father->num > num && father->left!=NULL)
			father = father->left;
		else if(father->num < num && father->right!=NULL)
			father = father->right;
		else if(father->num == num)
		{
			//printf("%d is already in tree!\n",num);
			return T;
		}
		else
			break;
		route[++count] = father;
	}
	son = RBNewNode(num);
	if(father->num > num)
		father->left = son;
	else
		father->right = son;
	while(count)								//如果新节点的父亲是红色，逐层排查矛盾 
	{
		grandfather = route[--count];
		if(father->color!=1 || son->color!=1)
		{
			son = father;
			father = grandfather;
			continue;
		}
		if(father->num < grandfather->num)		//父节点是一个左节点
		{
			uncle = grandfather->right;
			if(uncle!=NULL && uncle->color == 1)				//父节点的sibling是红色
			{
				father->color = uncle->color = 2; //父节点及其sibling标记为黑色
				if(grandfather == T)			//祖父是根，done 
					return T;
				grandfather->color = 1;			//祖父不是根，矛盾向上传递 
				son = father;
				father = grandfather;
			}
			else 								//父节点的sibling是黑色
			{
				if(son->num > father->num) 		//子节点是右节点
				{
					grandfather->left = LeftRotate(father , son);	//左旋子节点 
					temp = father;father = son;son = temp;	//交换指向子节点和父节点的指针 
				}
				if(son->num < father->num)		//子节点是左节点
				{
					father->color = 2;
					grandfather->color = 1;
					if(grandfather == T) 		//若祖父为根，右旋父节点，done 
						return T = RightRotate(grandfather , father);
					if(route[count - 1]->left == grandfather)    //若祖父不是根，右旋父节点作为曾祖父的child 
						route[count - 1]->left = RightRotate(grandfather , father);
					else
						route[count - 1]->right = RightRotate(grandfather , father);
					return T;
				} 
			}
		}
		else									//父节点是一个右节点
		{
			uncle = grandfather->left;
			if(uncle!=NULL && uncle->color == 1)				//父节点的sibling是红色
			{
				father->color = uncle->color = 2; 
				if(grandfather == T )
					return T;
				grandfather->color = 1;
				son = father;
				father = grandfather;
			}
			else								//父节点的sibling是黑色
			{
				if(son->num < father->num)		//子节点是左节点 
				{
					grandfather->right = RightRotate(father , son); 
					temp = father;father = son;son = temp; 
				}
				if(son->num > father->num)		//子节点是右节点 
				{
					father->color = 2;
					grandfather->color = 1;
					if(grandfather == T)
						return T = LeftRotate(grandfather , father);
					if(route[count - 1]->left == grandfather)
						route[count - 1]->left = LeftRotate(grandfather , father);
					else
						route[count - 1]->right = LeftRotate(grandfather , father);	
					return T;
				} 
			}
		}
	}
	return T;
}

RBptr RBDelete(int num , RBptr T)
{
	if(T->num == -1)
	{
		printf("Tree is empty, can't delete.\n");
		return T;
	}
	RBptr son = NULL , father = NULL , sibling = NULL , nephew = NULL , temp = T , route[2000] = {NULL};
	int count = -1 , tempnum;
	route[++count] = temp;
	while(temp->left!=NULL || temp->right!=NULL)		//找到待删除的节点 
	{
		if(temp->num > num && temp->left!=NULL)
			temp = temp->left;
		else if(temp->num < num && temp->right!=NULL)
			temp = temp->right;
		else
			break;
		route[++count] = temp;
	}
	if(temp->left == NULL && temp->right == NULL && temp->num != num)
	{
		printf("Can't find %d!\n",num);
		return T;
	}
	if(temp->left && temp->right)		//若待删除节点有两个child，找到右子树中最小值和它交换 
	{
		route[++count] = son = temp->right;
		while(son->left)
			route[++count] = son = son->left;
		tempnum = temp->num;
		temp->num = son->num;
		son->num = tempnum;				//只需交换值，颜色不用换
	}
	else
		son = temp;						//son现在指向待删除节点
	if(count)
		father = route[count - 1];
	else if(son->left == NULL && son->right == NULL)
	{
		son->num = -1;
		return T;
	 } 
	else if(son->right!=NULL)
	{
		son->right->color = 2;
		return T = son->right;
	}
	else if(son->left!=NULL)
	{
		son->left->color = 2;
		return T = son->left;
	}
	if(son->color == 1 || (son->left!=NULL&&son->left->color==1) || (son->right!=NULL&&son->right->color==1))  
	{									//待删除节点是红色或有红子节点
		if(son->left!=NULL)
			son->left->color = 2;		//如果待删除结点有红子节点，将其变黑 
		else if(son->right!=NULL)
			son->right->color = 2;
		if(father->right == son)
			father->right = (son->left == NULL ? son->right : son->left);
		else
			father->left = (son->left == NULL ? son->right : son->left);
		return T;
	}
	else
	{
		son->color = 3;					//待删除节点只有黑子节点，将待删除节点颜色变为双黑 
		son->num = 0;
	}
	while(count && son->color == 3)
	{
		father = route[--count];
		if(father->left == son)			//双黑是左节点
		{
			if(father->right == NULL)
			{
				father->left = NULL;
				return T;
			}
			sibling = father->right;
			if(sibling->color == 1)		//双黑的sibling是红色
			{
				father->color = 1;
				sibling->color = 2;
				if(father == T)
					T = LeftRotate(father , sibling);
				else if(route[count - 1]->left == father)
					route[count - 1]->left = LeftRotate(father , sibling);
				else
					route[count - 1]->right = LeftRotate(father , sibling);
				route[count++] = sibling;
				sibling = father->right;
			}
			if(father->right == NULL)
			{
				father->left = NULL;
				return T;
			}
			if(sibling->color == 2)		//双黑的sibling是黑色
			{
				if((nephew = sibling->right)!=NULL && sibling->right->color == 1)	//远侄子是红色 
				{
					sibling->color = father->color;
					father->color = nephew->color = 2;
					if(son->num == 0)
						father->left = NULL;
					else
						son->color = 2;
					if(father == T)
						return T = LeftRotate(father , sibling);
					if(route[count - 1]->left == father)
						route[count - 1]->left = LeftRotate(father , sibling);
					else
						route[count - 1]->right = LeftRotate(father , sibling);
					return T;
				}
				else if((nephew = sibling->left)!=NULL && sibling->left->color == 1)	//近侄子是红色
				{
					nephew->color = father->color;
					father->color = 2;
					if(son->num == 0)
						father->left = NULL;
					else
						son->color = 2;
					father->right = RightRotate(sibling , nephew);
					if(father == T)
						return T = LeftRotate(father , nephew);
					if(route[count - 1]->left == father)
						route[count - 1]->left = LeftRotate(father , nephew);
					else
						route[count - 1]->right = LeftRotate(father , nephew);
					return T;
				}
				else					//两个侄子都是黑色 
				{
					if(son->num == 0)
						father->left = NULL;
					else
						son->color = 2;
					sibling->color = 1;
					if(father->color == 1 || father == T)	//父节点是红色或是根，done
					{
						father->color = 2;
						return T;
					}
					father->color = 3;	//父节点是非根的黑节点，矛盾上移 
					son = father; 
				}
			} 	
		}
		else							//双黑是右节点
		{
			if(father->left == NULL)
			{
				father->right = NULL;
				return T;
			}
			sibling = father->left;
			if(sibling->color == 1)		//双黑的sibling是红色
			{
				father->color = 1;
				sibling->color = 2;
				if(father == T)
					T = RightRotate(father , sibling);
				else if(route[count - 1]->left == father)
					route[count - 1]->left = RightRotate(father , sibling);
				else
					route[count - 1]->right = RightRotate(father , sibling);
				route[count++] = sibling;
				sibling = father->left;
			}
			if(father->left == NULL)
			{
				father->right = NULL;
				return T;
			}
			if(sibling->color == 2)		//双黑的sibling是黑色
			{
				if((nephew = sibling->left)!=NULL && sibling->left->color == 1)	//远侄子是红色 
				{
					sibling->color = father->color;
					father->color = nephew->color = 2;
					if(son->num == 0)
						father->right = NULL;
					else
						son->color = 2;
					if(father == T)
						return T = RightRotate(father , sibling);
					if(route[count - 1]->left == father)
						route[count - 1]->left = RightRotate(father , sibling);
					else
						route[count - 1]->right = RightRotate(father , sibling);
					return T;
				}
				else if((nephew = sibling->right)!=NULL && sibling->right->color == 1)	//近侄子是红色
				{
					nephew->color = father->color;
					father->color = 2;
					if(son->num == 0)
						father->right = NULL;
					else
						son->color = 2;
					father->left = LeftRotate(sibling , nephew);
					if(father == T)
						return T = RightRotate(father , nephew);
					if(route[count - 1]->left == father)
						route[count - 1]->left = RightRotate(father , nephew);
					else
						route[count - 1]->right = RightRotate(father , nephew);
					return T;
				}
				else					//两个侄子都是黑色 
				{
					if(son->num == 0)
						father->right = NULL;
					else
						son->color = 2;
					sibling->color = 1;
					if(father->color == 1 || father == T)	//父节点是红色或是根，done
					{
						father->color = 2;
						return T;
					}
					father->color = 3;	//父节点是非根的黑节点，矛盾上移 
					son = father; 
				}
			} 	
		}
	}
	return T;
}

int GetHeight(RBptr T)
{
	if(T == NULL)
		return 0;
	int a = GetHeight(T->left) , b = GetHeight(T->right);
	return (a > b ? a : b) + 1;
}

void Levelorder(RBptr T)
{
	int queue_front = 0, queue_rear = -1,enter = 0 , i;
	RBptr temp, queue[100000] = {NULL};
	queue[++queue_rear] = T;
	while(queue_front != queue_rear + 1)
	{
		temp = queue[queue_front++];
		i = 0;
    	printf("%d%s ",temp->num,temp->color==1?"red":"black");
		if(temp -> left)
			queue[++queue_rear] = temp -> left;
		if(temp -> right)
			queue[++queue_rear] = temp -> right;
		if(queue_front == enter + 1)
		{
			printf("\n");
			enter = queue_rear;
		}
	}
}
