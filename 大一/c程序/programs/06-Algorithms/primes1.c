/*
 * File: primes1.c
 * ---------------
 * This program prints out a list of all prime numbers between
 * the limits LowerLimit and UpperLimit.
 */

#include <stdio.h>
#include "genlib.h"

/*
 * Constants
 * ---------
 * LowerLimit -- Starting value for the prime search
 * UpperLimit -- Final value for the prime search
 */

#define LowerLimit 0
#define UpperLimit 1000

/* Function prototypes */

bool IsPrime(int n);

/* Main program */

main()
{
    int i;

    printf("This program lists the primes between %d and %d.\n",
           LowerLimit, UpperLimit);
    for (i = LowerLimit; i <= UpperLimit; i++) {
        if (IsPrime(i)) {
            printf("%4d\n", i);
        }
    }
}

/*
 * Function: IsPrime
 * Usage: if (IsPrime(n)) . . .
 * ----------------------------
 * Returns TRUE if n is prime, and FALSE otherwise.
 */

bool IsPrime(int n)
{
    int divisors, i;

    divisors = 0;
    for (i = 1; i <= n; i++) {
        if (n % i == 0) divisors++;
    }
    return (divisors == 2);
}
