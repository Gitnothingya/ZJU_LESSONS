/*
 * File: queue.c
 * -------------
 * This file implements the queue.h abstraction using an array.
 */

#include <stdio.h>

#include "genlib.h"
#include "queue.h"

/*
 * Constants:
 * ----------
 * MaxQueueSize -- Maximum number of elements in the queue
 */

#define MaxQueueSize 10

/*
 * Type: queueCDT
 * --------------
 * This type provides the concrete counterpart to the queueADT.
 * The representation used here consists of an array coupled
 * with an integer indicating the effective size.  This
 * representation means that Dequeue must shift the existing
 * elements in the queue.
 */

struct queueCDT {
    void *array[MaxQueueSize];
    int len;
};

/* Exported entries */

/*
 * Function: NewQueue
 * ------------------
 * This function allocates and initializes the storage for a
 * new queue.
 */

queueADT NewQueue(void)
{
    queueADT queue;

    queue = New(queueADT);
    queue->len = 0;
    return (queue);
}

/*
 * Function: FreeQueue
 * -------------------
 * This function frees the queue storage.
 */

void FreeQueue(queueADT queue)
{
    FreeBlock(queue);
}

/*
 * Function: Enqueue
 * -----------------
 * This function adds a new element to the queue.
 */

void Enqueue(queueADT queue, void *obj)
{
    if (queue->len == MaxQueueSize) {
        Error("Enqueue called on a full queue");
    }
    queue->array[queue->len++] = obj;
}

/*
 * Function: Dequeue
 * -----------------
 * This function removes and returns the data value at the
 * head of the queue.
 */

void *Dequeue(queueADT queue)
{
    void *result;
    int i;

    if (queue->len == 0) Error("Dequeue of empty queue");
    result = queue->array[0];
    for (i = 1; i < queue->len; i++) {
        queue->array[i - 1] = queue->array[i];
    }
    queue->len--;
    return (result);
}

/*
 * Function: QueueLength
 * ---------------------
 * This function returns the number of elements in the queue.
 */

int QueueLength(queueADT queue)
{
    return (queue->len);
}
