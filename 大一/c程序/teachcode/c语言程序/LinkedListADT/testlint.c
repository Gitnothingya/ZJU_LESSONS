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
	
	list = NewLinkedList(); /*��ʼ������������һ���ƽ�㡪��ͷ���*/
	printf("��������Գ��������������͵ĸ��ֲ�������.\n");
	printf("�����򹹽�����С�������е���������\n");
	printf("��ʵ�ִ���������ӡ�����������ɾ�����Ĳ���.\n");
	while (!end) {
		printf("1: ��������\n");
		printf("2: ��ӡ����\n");
		printf("3: ������\n");
		printf("4: ɾ�����\n");
		printf("0: �˳�\n");
		printf("������ѡ�");
		scanf("%d", &choice);
		switch (choice) {
			case 1:
				printf("������һ����������-1������");
				CreateLinkedList(list); /*��������*/
				break;
			case 2:
				TraverseLinkedList(list, PrintObj); /*��������������ÿ�������ú���PrintObj*/
				printf("/\n");
				break;
			case 3:
				printf("������Ҫ�����������");
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
				printf("������Ҫɾ����������");
				scanf("%d", &data);
				obj = New(int *);
				*obj = data;
				ptr = DeleteNode(list, obj, SameObj);
				FreeBlock(ptr);
				break;
			case 0:
				FreeLinkedList(list);/*�ͷ���������ռ�*/
				end = TRUE;
				break;
			default:
				break;
		}
	}

	return 0;
}

/*�Ӽ��̶������ݣ�����С����˳�򴴽���������*/
void CreateLinkedList(linkedlistADT head)
{
	int data, *obj;
	linkedlistADT nodeptr, prenodeptr;
	
	while (TRUE) {
		scanf("%d", &data); /*��ȡ����*/
		if (data == -1) break; /*��ǰ����Ϊ-1��ʾ�������˳�ѭ��*/ 
		prenodeptr = head;
		nodeptr = NextNode(head, prenodeptr);
		while (nodeptr != NULL) {
			if (*(int *)NodeObj(head, nodeptr) > data) break;
			prenodeptr = nodeptr;
			nodeptr = NextNode(head, nodeptr);	
		}
		obj = New(int *); /*����洢���ݵ��ڴ浥Ԫ*/
		*obj = data; /*���뵱ǰ����*/
		InsertNode(head, prenodeptr, obj); /*���뵱ǰ���ݵ�ָ�뵽����head��prenodeptr���ĺ���*/
	}
	return;
}

/*��ӡ����ǰ�������*/
void PrintObj(void *obj)
{
	printf("%d->", *(int *)obj);
	return;
}

/*�ж���������ָ����ָ��Ķ����Ƿ����*/ 
bool SameObj(void *obj1, void *obj2)
{
	return *(int *)obj1 == *(int *)obj2;	
}
