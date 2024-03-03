/*
 * File: testrev.c
 * ---------------
 * This program simply reads in an array of integers  and then
 * display them elements in the original order.  It is a test
 * program on the way to writing the reverse program.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constants
 * ---------
 * MaxElements -- Maximum number of elements
 * Sentinel    -- Value used to terminate input
 */

#define MaxElements 250
#define Sentinel      0

/* Private function prototypes */

static int GetIntegerArray(int array[], int max, int sentinel);
static void PrintIntegerArray(int array[], int n);
static void GiveInstructions(void);

/* Main program */

main()
{
    int list[MaxElements], n;

    n = GetIntegerArray(list, MaxElements, Sentinel);
    PrintIntegerArray(list, n);
}

/*
 * Function: GetIntegerArray
 * Usage: n = GetIntegerArray(array, max, sentinel);
 * -------------------------------------------------
 * This function reads elements into an integer array by
 * reading values, one per line, from the keyboard.  The end
 * of the input data is indicated by the parameter sentinel.
 * The caller is responsible for declaring the array and
 * passing it as a parameter, along with its allocated
 * size.  The value returned is the number of elements
 * actually entered and therefore gives the effective size
 * of the array, which is typically less than the allocated
 * size given by max.  If the user types in more than max
 * elements, GetIntegerArray generates an error.
 */

static int GetIntegerArray(int array[], int max, int sentinel)
{
    int n, value;

    n = 0;
    while (TRUE) {
        printf(" ? ");
        value = GetInteger();
        if (value == sentinel) break;
        if (n == max) Error("Too many input items for array");
        array[n] = value;
        n++;
    }
    return (n);
}

/*
 * Function: PrintIntegerArray
 * Usage: PrintIntegerArray(array, n);
 * -----------------------------------
 * This function displays the first n values in array,
 * one per line, on the console.
 */

static void PrintIntegerArray(int array[], int n)
{
    int i;

    for (i = 0; i < n; i++) {
        printf("%d\n", array[i]);
    }
}
