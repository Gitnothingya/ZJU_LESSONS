/*
 * File: power.c
 * -------------
 * This file includes the RaiseIntToPower function and a
 * simple test program that generates a table of the powers
 * of 2.
 */

#include <stdio.h>
#include "genlib.h"

/*
 * Constants
 * ---------
 * LowerLimit -- Starting value for power-of-two table
 * UpperLimit -- Final value for power-of-two table
 */

#define LowerLimit  0
#define UpperLimit 10

/* Function prototypes */

static int RaiseIntToPower(int n, int k);

/* Main program */

main()
{
    int i;

    printf("Powers of two:\n");
    for (i = LowerLimit; i <= UpperLimit; i++) {
        printf(" %2d  %5d\n", i, RaiseIntToPower(2, i));
    }
}

/*
 * Function: RaiseIntToPower
 * Usage: result = RaiseIntToPower(n, k);
 * --------------------------------------
 * This function returns n raised to the kth power.  The result
 * is computed by applying the following mathematical definition:
 *
 *             /  1, if k = 0
 *     k      /
 *    n   =  <
 *            \        (k-1)
 *             \  n * n      , otherwise
 */

static int RaiseIntToPower(int n, int k)
{
    if (k == 0) {
        return (1);
    } else {
        return (n * RaiseIntToPower(n, k - 1));
    }
}
