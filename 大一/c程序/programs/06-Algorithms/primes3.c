/*
 * File: primes3.c
 * ---------------
 * This program prints out a list of all prime numbers between
 * the limits LowerLimit and UpperLimit.  This version corrects
 * the errors in primes2.c and results in an implementation of
 * the IsPrime function than is in fact more efficient than the
 * one given in primes.c.
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
 * 1.  Except for 2, no even numbers can be prime.  Thus
 *     it is possible to make one check for 2 and then
 *     test only odd divisors.
 *
 * 2.  If the only concern of the function is determining
 *     whether the number is prime, there is no reason to
 *     continue the loop after a factor is found.
 *
 * 3.  If a number n has a factor f larger than the square root
 *     of n, then n/f must also be a factor and must be smaller
 *     than the square root of n.  Thus, it is sufficient to
 *     check only factors up to the square root.  For efficiency,
 *     the square root is calculated outside the loop.  To ensure
 *     that roundoff error in floating-point arithmetic does not
 *     cause us to miss a factor, this algorithm checks one
 *     extra value.
 */

bool IsPrime(int n)
{
    int i, limit;

    if (n <= 1) return (FALSE);
    if (n == 2) return (TRUE);
    if (n % 2 == 0) return (FALSE);
    limit = sqrt(n) + 1;
    for (i = 3; i <= limit; i += 2) {
        if (n % i == 0) return (FALSE);
    }
    return (TRUE);
}
