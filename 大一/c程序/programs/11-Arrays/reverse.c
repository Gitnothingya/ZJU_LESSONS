/*
 * File: reverse.c
 * ---------------
 * This program reads in an array of integers, reverses the
 * elements of the array, and then display the elements in
 * their reversed order.
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
static void ReverseIntegerArray(int array[], int n);
static void SwapIntegerElements(int array[], int p1, int p2);
static void GiveInstructions(void);

/* Main program */

main()
{
    int list[MaxElements], n;

    GiveInstructions();
    n = GetIntegerArray(list, MaxElements, Sentinel);
    ReverseIntegerArray(list, n);
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

/*
 * Function: ReverseIntegerArray
 * Usage: ReverseIntegerArray(array, n);
 * -------------------------------------
 * This function reverses the elements of array, which has n as
 * its effective size.  The procedure operates by going through
 * the first half of the array and swapping each element with
 * its counterpart at the end of the array.
 */

static void ReverseIntegerArray(int array[], int n)
{
    int i;

    for (i = 0; i < n / 2; i++) {
        SwapIntegerElements(array, i, n - i - 1);
    }
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

/*
 * Function: GiveInstructions
 * Usage: GiveInstructions();
 * --------------------------
 * This function gives instructions for the array reversal program.
 */

static void GiveInstructions(void)
{
    printf("Enter numbers, one per line, ending with the\n");
    printf("sentinel value %d.  The program will then\n", Sentinel);
    printf("display those values in reverse order.\n");
}
