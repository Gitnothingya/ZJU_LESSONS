/*
 * File: sort.c
 * ------------
 * This file implements the sort.h interface using the merge
 * sort algorithm.
 */

#include <stdio.h>
#include "genlib.h"
#include "sort.h"

/* Private function prototypes */

static void Merge(int array[], int arr1[], int n1,
                               int arr2[], int n2);

/*
 * Function: SortIntegerArray
 * --------------------------
 * This implementation uses an algorithm called merge sort, which
 * consists of the following steps:
 *
 * (1)  Divide the array into two halves.
 * (2)  Sort each half recursively.
 * (3)  Recombine the sorted pieces by calling the Merge function.
 */

void SortIntegerArray(int array[], int n)
{
    int i, n1, n2;
    int *arr1, *arr2;

    if (n > 1) {
        n1 = n / 2;
        n2 = n - n1;
        arr1 = NewArray(n1, int);
        arr2 = NewArray(n2, int);
        for (i = 0; i < n1; i++) arr1[i] = array[i];
        for (i = 0; i < n2; i++) arr2[i] = array[n1 + i];
        SortIntegerArray(arr1, n1);
        SortIntegerArray(arr2, n2);
        Merge(array, arr1, n1, arr2, n2);
        FreeBlock(arr1);
        FreeBlock(arr2);
    }
}

/*
 * Function: Merge
 * Usage: Merge(array, arr1, n1, arr2, n2);
 * ----------------------------------------
 * This function merges two sorted arrays (arr1 and arr2) into a
 * single array.  Because the input arrays are sorted, the Merge
 * implementation can always select the first unused element in
 * one of the input arrays to fill the next position in array.
 */

static void Merge(int array[], int arr1[], int n1,
                               int arr2[], int n2)
{
    int p, p1, p2;

    p = p1 = p2 = 0;
    while (p1 < n1 && p2 < n2) {
        if (arr1[p1] < arr2[p2]) {
            array[p++] = arr1[p1++];
        } else {
            array[p++] = arr2[p2++];
        }
    }
    while (p1 < n1) array[p++] = arr1[p1++];
    while (p2 < n2) array[p++] = arr2[p2++];
}
