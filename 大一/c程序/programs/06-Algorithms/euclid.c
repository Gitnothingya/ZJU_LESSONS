/*
 * File: euclid.c
 * --------------
 * This program computes a greates common divisor using
 * Euclid's algorithm.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Function prototypes */

int GCD(int x, int y);

/* Main program */

main()
{
    int x, y;

    printf("This program calculates greatest common divisors.\n");
    printf("Enter two integers, x and y.\n");
    printf("x = ? ");
    x = GetInteger();
    printf("y = ? ");
    y = GetInteger();
    printf("The gcd of %d and %d is %d.\n", x, y, GCD(x, y));
}

/*
 * Function: GCD
 * Usage: gcd = GCD(x, y);
 * -----------------------
 * Returns the greatest common divisor of x and y,
 * calculated by Euclid's algorithm, which is discussed
 * as Proposition 7 in Book II of Euclid's Elements.
 */

int GCD(int x, int y)
{
    int r;

    while (TRUE) {
        r = x % y;
        if (r == 0) break;
        x = y;
        y = r;
    }
    return (y);
}
