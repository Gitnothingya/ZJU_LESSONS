#include <stdio.h>
#include "genlib.h"
#include "simpio.h"
#include "linkedlist.h"

void CreateLinkedList(linkedlistADT head);
void PrintObj(void *obj);
bool SameObj(void *obj1, void *obj2);

int main()
{
	linkedlistADT list, ptr, preptr;
	int *obj, data;
	int choice;
	bool end = FALSE;
	
	list = NewLinkedList(); /*初始化链表，仅包含一个哑结点——头结点*/
	printf("本程序测试抽象链表数据类型的各种操作功能.\n");
	printf("本程序构建依大小递增排列的整数链表，\n");
	printf("并实现创建链表、打印链表、插入结点和删除结点的操作.\n");
	while (!end) {
		printf("1: 创建链表\n");
		printf("2: 打印链表\n");
		printf("3: 插入结点\n");
		printf("4: 删除结点\n");
		printf("0: 退出\n");
		printf("请输入选项：");
		scanf("%d", &choice);
		switch (choice) {
			case 1:
				printf("请输入一串整数，以-1结束：");
				CreateLinkedList(list); /*创建链表*/
				break;
			case 2:
				TraverseLinkedList(list, PrintObj); /*遍历链表，对链表每个结点调用函数PrintObj*/
				printf("/\n");
				break;
			case 3:
				printf("请输入要插入的整数：");
				scanf("%d", &data);
				preptr = list; ptr = NextNode(list, preptr);
				while (ptr != NULL) {
					if (*(int *)NodeObj(list, ptr) > data) break;
					preptr = ptr;
					ptr = NextNode(list, ptr);
				}
				obj = New(int *);
				*obj = data; 
				InsertNode(list, preptr, obj);
				break;
			case 4:
				printf("请输入要删除的整数：");
				scanf("%d", &data);
				obj = New(int *);
				*obj = data;
				ptr = DeleteNode(list, obj, SameObj);
				FreeBlock(ptr);
				break;
			case 0:
				FreeLinkedList(list);/*释放链表关联空间*/
				end = TRUE;
				break;
			default:
				break;
		}
	}

	return 0;
}

/*从键盘读入数据，按从小到大顺序创建完整链表*/
void CreateLinkedList(linkedlistADT head)
{
	int data, *obj;
	linkedlistADT nodeptr, prenodeptr;
	
	while (TRUE) {
		scanf("%d", &data); /*读取数据*/
		if (data == -1) break; /*当前数据为-1表示结束，退出循环*/ 
		prenodeptr = head;
		nodeptr = NextNode(head, prenodeptr);
		while (nodeptr != NULL) {
			if (*(int *)NodeObj(head, nodeptr) > data) break;
			prenodeptr = nodeptr;
			nodeptr = NextNode(head, nodeptr);	
		}
		obj = New(int *); /*申请存储数据的内存单元*/
		*obj = data; /*存入当前数据*/
		InsertNode(head, prenodeptr, obj); /*插入当前数据的指针到链表head的prenodeptr结点的后面*/
	}
	return;
}

/*打印链表当前结点数据*/
void PrintObj(void *obj)
{
	printf("%d->", *(int *)obj);
	return;
}

/*判断两个整型指针所指向的对象是否相等*/ 
bool SameObj(void *obj1, void *obj2)
{
	return *(int *)obj1 == *(int *)obj2;	
}
