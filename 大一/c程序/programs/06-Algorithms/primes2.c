/*
 * File: primes2.c                  (WARNING -- BUGGY PROGRAM)
 * ---------------
 * This program prints out a list of all prime numbers between
 * the limits LowerLimit and UpperLimit.  This version attempts
 * to use a more efficient algorithm than the one in primes.c
 * to implement the IsPrime function, but the result is both
 * buggy for certain argument values and surprisingly inefficient
 * when it does work.
 */

#include <stdio.h>
#include <math.h>
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
 * Returns TRUE if n is prime, and FALSE otherwise.  The
 * implementation takes account of the following observations:
 *
 * 1.  Even numbers are not prime (with the exception of
 *     2, which this buggy program incorrectly classifies).
 *
 * 2.  If the only concern of the function is determining
 *     whether the number is prime, there is no reason to
 *     continue the loop after a factor is found.
 *
 * 3.  If a number n has a factor f larger than the square root
 *     of n, then n/f must also be a factor and must be smaller
 *     than the square root of n.  Thus, it is sufficient to
 *     check only factors up to the square root.
 */

bool IsPrime(int n)
{
    int i;

    if (n % 2 == 0) return (FALSE);
    for (i = 3; i <= sqrt(n); i += 2) {
        if (n % i == 0) return (FALSE);
    }
    return (TRUE);
}
