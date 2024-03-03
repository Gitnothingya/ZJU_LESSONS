/*
 * File: timestab.c
 * ----------------
 * Generates a multiplication table where each axis
 * runs from LowerLimit to UpperLimit.
 */

#include <stdio.h>
#include "genlib.h"

/*
 * Constants
 * ---------
 * LowerLimit -- Starting value for the table
 * UpperLimit -- Final value for the table
 */

#define LowerLimit  1
#define UpperLimit 10

/* Main program */

main()
{
    int i, j;

    for (i = LowerLimit; i <= UpperLimit; i++) {
        for (j = LowerLimit; j <= UpperLimit; j++) {
            printf(" %4d", i * j);
        }
        printf("\n");
    }
}
