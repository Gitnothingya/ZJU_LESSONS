/*
 * File: sort.c
 * ------------
 * This file implements the sort.h interface using the selection
 * sort algorithm.
 */

#include <stdio.h>
#include "genlib.h"
#include "sort.h"

/* Private function prototypes */

static int FindSmallestInteger(int array[], int low, int high);
static void SwapIntegerElements(int array[], int p1, int p2);

/*
 * Function: SortIntegerArray
 * --------------------------
 * This implementation uses an algorithm called selection sort,
 * which can be described in English as follows.  With your left
 * hand, point at each element in the array in turn, starting at
 * index 0.  At each step in the cycle:
 *
 * (1)  Find the smallest element in the range between your left
 *      hand and the end of the array, and point at that element
 *      with your right hand.
 *
 * (2)  Move that element into its correct index position by
 *      switching the elements indicated by your left and right
 *      hands.
 */

void SortIntegerArray(int array[], int n)
{
    int lh, rh;

    for (lh = 0; lh < n; lh++) {
        rh = FindSmallestInteger(array, lh, n-1);
        SwapIntegerElements(array, lh, rh);
    }
}

/*
 * Function: FindSmallestInteger
 * Usage: index = FindSmallestInteger(array, low, high);
 * -----------------------------------------------------
 * This function returns the index of the smallest value in the
 * specified array of integers, searching only between the index
 * positions low and high, inclusive.  It operates by keeping track
 * of the index of the smallest so far in the variable spos.  If the
 * index range is empty, the function returns low.
 */

static int FindSmallestInteger(int array[], int low, int high)
{
    int i, spos;

    spos = low;
    for (i = low; i <= high; i++) {
        if (array[i] < array[spos]) spos = i;
    }
    return (spos);
}

/*
 * Function: SwapIntegerElements
 * Usage: SwapIntegerElements(array, p1, p2);
 * ------------------------------------------
 * This function swaps the elements in array at index
 * positions p1 and p2.
 */

static void SwapIntegerElements(int array[], int p1, int p2)
{
    int tmp;

    tmp = array[p1];
    array[p1] = array[p2];
    array[p2] = tmp;
}
