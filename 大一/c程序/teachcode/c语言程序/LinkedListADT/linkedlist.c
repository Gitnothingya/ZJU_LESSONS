/*
 * File: linkedlist.c
 * -------------
 * This file implements the linkedlist.h abstraction.
 */

#include <stdio.h>

#include "genlib.h"
#include "linkedlist.h"

/*
 * Type: linkedlistCDT
 * --------------
 * This type provides the concrete counterpart to the linkedlistADT.
 */

struct linkedlistCDT {
    void *dataptr;
    struct linkedlistCDT *next;
};

/* Exported entries */

/*
 * Function: NewLinkedList
 * Usage: linkedlist = NewLinkedList();
 * --------------------------
 * This function allocates and returns an empty linked list (including a dummy head
 * node only).
 */

linkedlistADT NewLinkedList(void)
{
    linkedlistADT head;

    head = New(linkedlistADT); /*New the dummy head node's spaces*/
    head->dataptr = NULL; /*The dummy head node's dataptr is NULL*/
	head->next = NULL; /*The dummy head node's next is NULL*/
    return (head);
}

/*
 * Function: FreeLinkedList
 * Usage: FreeLinkedList(linkedlist);
 * ------------------------
 * This function frees the storage associated with linked list.
 */

void FreeLinkedList(linkedlistADT head)
{
	linkedlistADT nodeptr, nextnodeptr;

	nodeptr = head;/*head node*/
	while (nodeptr != NULL) { /*Current node is NOT NULL*/
	    nextnodeptr = nodeptr->next; /*next node*/
		if (nodeptr->dataptr != NULL) {
			FreeBlock(nodeptr->dataptr);/*free the spaces which the current node's dataptr points to */
		}
		FreeBlock(nodeptr); /*free the current node*/
		nodeptr = nextnodeptr; /*move to the next node*/
	}
	return; 
}

/*
 * Function: InsertNode
 * Usage: InsertNode(linkedlist, nodeptr, obj);
 * ----------------------------
 * This function ineserts the data value after the nodeptr node of the linked
 * list. if nodeptr is NULL, append the obj to the tail of the linked list.
 */

void InsertNode(linkedlistADT head, linkedlistADT nodeptr, void *obj)
{
	linkedlistADT ptr;

	if (obj == NULL) return;
	if (nodeptr == NULL) { /*append the obj to the tail*/
		nodeptr = head;
		while (nodeptr->next != NULL) nodeptr = nodeptr->next;
	}
	ptr = New(linkedlistADT); /*New a node*/
	ptr->dataptr = obj;  /*Set the dataptr of the node*/
	ptr->next = nodeptr->next;
	nodeptr->next = ptr;
	return;
}

/*
 * Function: DeleteNode
 * Usage: nodeptr = DeleteNode(linkedlist, obj, equalfunptr);
 * ------------------------------
 * This function deletes the node with the data obj of the linked list according to the function
 * equalfunptr. If equalfunptr is NULL, compare the pointers' values ONLY. This function returns 
 * the pointer of the node if found, NULL otherwise.
 */

linkedlistADT DeleteNode(linkedlistADT head, void *obj,
                         bool (*equalfunptr)(void *obj1, void *obj2))
{
	linkedlistADT nodeptr, prenodeptr;

	if (obj == NULL) return NULL;
	prenodeptr = head;
    nodeptr = head->next;
	while (nodeptr != NULL) {
		if (equalfunptr == NULL) {
			if (nodeptr->dataptr == obj) break; /*比较指针相等*/	
		} else {
			if ((*equalfunptr)(nodeptr->dataptr, obj)) break; /*比较指针所指向的对象相等*/
		}
	    prenodeptr = nodeptr;
        nodeptr = nodeptr->next;
	}
	if (nodeptr != NULL) /*found*/
	    prenodeptr->next = nodeptr->next;
	return nodeptr;
}

/*
 * Function: TraverseList
 * Usage: TraverseList(linkedlist, void (*traversefunptr)(void *obj));
 * ------------------------------
 * This function traverses the linked list, and process the node value obj using
 * the function which traversefunptr points to.
 */

void TraverseLinkedList(linkedlistADT head, void (*traversefunptr)(void *obj))
{
	linkedlistADT nodeptr;

	if (traversefunptr == NULL) return;
	nodeptr = head->next;
	while (nodeptr != NULL) {
		(*traversefunptr)(nodeptr->dataptr);
		nodeptr = nodeptr->next;
	}
	return;
}

/*
 * Function: NextNode
 * Usage: nextnodeptr = NextNode(linkedlist, nodeptr);
 * ------------------------------
 * This function return the pointer of the next node of the node nodeptr.
 */

linkedlistADT NextNode(linkedlistADT head, linkedlistADT nodeptr)
{
	if (nodeptr != NULL) return nodeptr->next;
	return NULL;
}

/*
 * Function: NodeObj
 * Usage: obj = NodeObj(linkedlist, nodeptr);
 * ------------------------------
 * This function return the dataptr of the node nodeptr points to.
 */

void *NodeObj(linkedlistADT head, linkedlistADT nodeptr)
{
	if (nodeptr != NULL) return nodeptr->dataptr;
	return NULL;
}
