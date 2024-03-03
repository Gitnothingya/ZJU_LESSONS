#include <stdio.h>
#include <stdlib.h>

typedef struct node{
    int index;
    int value;
    char tags[12];
    struct node* next;
}node;

typedef struct list
{
    node* start;
    int length;
}list;


// list singlelist;

node* new(list* singlelist)
{
    singlelist->start = (node*)malloc(sizeof(node));
    singlelist->start->index = 3;
    int i;
    node* pre = singlelist->start, *now;
    for(i=0 ; i<10; i++){
        now = (node*)malloc(sizeof(node));
        now->index = (i+4) % 10;
        pre->next = now;
        pre = now;
    }
    singlelist->length = 10;
}

void arrange()
{

}
