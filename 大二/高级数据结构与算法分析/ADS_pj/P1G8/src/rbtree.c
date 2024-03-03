#include<stdio.h>
#include<stdlib.h>
#include "../include/rbtree.h"

RBptr RBNewNode(int num)						//����rootʱ��num��Ϊ-1 
{
	RBptr p;
	p = (RBptr)malloc(sizeof(struct RBnode));
	p->num = num;
	p->color = 1;
	p->left = p->right = NULL;
	return p;
}

RBptr LeftRotate(RBptr u , RBptr v)				//��v 
{
    u->right = v->left;
    v->left = u;
    return v;
}

RBptr RightRotate(RBptr u , RBptr v)			//��v 
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
	if(T->num == -1)							//��û������� 
	{
		T->num = num;
		T->color = 2;
		return T;
	}
	RBptr father = T , route[2000] = {NULL} , son = NULL , grandfather = NULL , uncle = NULL , temp = NULL;
	int count = -1;
	route[++count] = father;
	while(father->left!=NULL || father->right!=NULL)		//�ҵ������λ�� 
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
	while(count)								//����½ڵ�ĸ����Ǻ�ɫ������Ų�ì�� 
	{
		grandfather = route[--count];
		if(father->color!=1 || son->color!=1)
		{
			son = father;
			father = grandfather;
			continue;
		}
		if(father->num < grandfather->num)		//���ڵ���һ����ڵ�
		{
			uncle = grandfather->right;
			if(uncle!=NULL && uncle->color == 1)				//���ڵ��sibling�Ǻ�ɫ
			{
				father->color = uncle->color = 2; //���ڵ㼰��sibling���Ϊ��ɫ
				if(grandfather == T)			//�游�Ǹ���done 
					return T;
				grandfather->color = 1;			//�游���Ǹ���ì�����ϴ��� 
				son = father;
				father = grandfather;
			}
			else 								//���ڵ��sibling�Ǻ�ɫ
			{
				if(son->num > father->num) 		//�ӽڵ����ҽڵ�
				{
					grandfather->left = LeftRotate(father , son);	//�����ӽڵ� 
					temp = father;father = son;son = temp;	//����ָ���ӽڵ�͸��ڵ��ָ�� 
				}
				if(son->num < father->num)		//�ӽڵ�����ڵ�
				{
					father->color = 2;
					grandfather->color = 1;
					if(grandfather == T) 		//���游Ϊ�����������ڵ㣬done 
						return T = RightRotate(grandfather , father);
					if(route[count - 1]->left == grandfather)    //���游���Ǹ����������ڵ���Ϊ���游��child 
						route[count - 1]->left = RightRotate(grandfather , father);
					else
						route[count - 1]->right = RightRotate(grandfather , father);
					return T;
				} 
			}
		}
		else									//���ڵ���һ���ҽڵ�
		{
			uncle = grandfather->left;
			if(uncle!=NULL && uncle->color == 1)				//���ڵ��sibling�Ǻ�ɫ
			{
				father->color = uncle->color = 2; 
				if(grandfather == T )
					return T;
				grandfather->color = 1;
				son = father;
				father = grandfather;
			}
			else								//���ڵ��sibling�Ǻ�ɫ
			{
				if(son->num < father->num)		//�ӽڵ�����ڵ� 
				{
					grandfather->right = RightRotate(father , son); 
					temp = father;father = son;son = temp; 
				}
				if(son->num > father->num)		//�ӽڵ����ҽڵ� 
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
	while(temp->left!=NULL || temp->right!=NULL)		//�ҵ���ɾ���Ľڵ� 
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
	if(temp->left && temp->right)		//����ɾ���ڵ�������child���ҵ�����������Сֵ�������� 
	{
		route[++count] = son = temp->right;
		while(son->left)
			route[++count] = son = son->left;
		tempnum = temp->num;
		temp->num = son->num;
		son->num = tempnum;				//ֻ�轻��ֵ����ɫ���û�
	}
	else
		son = temp;						//son����ָ���ɾ���ڵ�
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
	{									//��ɾ���ڵ��Ǻ�ɫ���к��ӽڵ�
		if(son->left!=NULL)
			son->left->color = 2;		//�����ɾ������к��ӽڵ㣬������ 
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
		son->color = 3;					//��ɾ���ڵ�ֻ�к��ӽڵ㣬����ɾ���ڵ���ɫ��Ϊ˫�� 
		son->num = 0;
	}
	while(count && son->color == 3)
	{
		father = route[--count];
		if(father->left == son)			//˫������ڵ�
		{
			if(father->right == NULL)
			{
				father->left = NULL;
				return T;
			}
			sibling = father->right;
			if(sibling->color == 1)		//˫�ڵ�sibling�Ǻ�ɫ
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
			if(sibling->color == 2)		//˫�ڵ�sibling�Ǻ�ɫ
			{
				if((nephew = sibling->right)!=NULL && sibling->right->color == 1)	//Զֶ���Ǻ�ɫ 
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
				else if((nephew = sibling->left)!=NULL && sibling->left->color == 1)	//��ֶ���Ǻ�ɫ
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
				else					//����ֶ�Ӷ��Ǻ�ɫ 
				{
					if(son->num == 0)
						father->left = NULL;
					else
						son->color = 2;
					sibling->color = 1;
					if(father->color == 1 || father == T)	//���ڵ��Ǻ�ɫ���Ǹ���done
					{
						father->color = 2;
						return T;
					}
					father->color = 3;	//���ڵ��ǷǸ��ĺڽڵ㣬ì������ 
					son = father; 
				}
			} 	
		}
		else							//˫�����ҽڵ�
		{
			if(father->left == NULL)
			{
				father->right = NULL;
				return T;
			}
			sibling = father->left;
			if(sibling->color == 1)		//˫�ڵ�sibling�Ǻ�ɫ
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
			if(sibling->color == 2)		//˫�ڵ�sibling�Ǻ�ɫ
			{
				if((nephew = sibling->left)!=NULL && sibling->left->color == 1)	//Զֶ���Ǻ�ɫ 
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
				else if((nephew = sibling->right)!=NULL && sibling->right->color == 1)	//��ֶ���Ǻ�ɫ
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
				else					//����ֶ�Ӷ��Ǻ�ɫ 
				{
					if(son->num == 0)
						father->right = NULL;
					else
						son->color = 2;
					sibling->color = 1;
					if(father->color == 1 || father == T)	//���ڵ��Ǻ�ɫ���Ǹ���done
					{
						father->color = 2;
						return T;
					}
					father->color = 3;	//���ڵ��ǷǸ��ĺڽڵ㣬ì������ 
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
