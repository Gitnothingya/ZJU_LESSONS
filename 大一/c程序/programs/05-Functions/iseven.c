/*
 * File: iseven.c
 * --------------
 * This program prints a list of the even numbers between
 * 1 and 10.  In an ideal implementation, constants would
 * be used for the limits, but this program is designed to
 * match the program example in the text.
 */

#include <stdio.h>
#include "genlib.h"

/* Function prototypes */

bool IsEven(int n);

/* Main program */

main()
{
    int i;

    for (i = 1; i <= 10; i++) {
        if (IsEven(i)) printf("%2d\n", i);
    }
}

/*
 * Function: IsEven
 * Usage: if (IsEven(n)) . . .
 * ---------------------------
 * This function returns TRUE if n is even.
 */

bool IsEven(int n)
{
    return (n % 2 == 0);
}
