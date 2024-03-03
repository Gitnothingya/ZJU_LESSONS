/*
 * File: combine.c
 * ---------------
 * This program tests a function to compute the mathematical
 * combination function Combinations(n, k), which gives the
 * number of ways to choose a subset of k objects from a set
 * of n distinct objects.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Function prototypes */

int Combinations(int n, int k);
int Factorial(int n);

/* Main program */

main()
{
    int n, k;

    printf("Enter number of objects in the set (n)? ");
    n = GetInteger();
    printf("Enter number to be chosen (k)? ");
    k = GetInteger();
    printf("C(%d, %d) = %d\n", n, k, Combinations(n, k));
}

/*
 * Function: Combinations
 * Usage: ways = Combinations(n, k);
 * ---------------------------------
 * Implements the Combinations function, which returns the number
 * of distinct ways of choosing k objects from a set of n objects.
 * In mathematics, this function is often written as C(n,k), but a
 * function called C is not very self-descriptive, particularly in
 * a language which has precisely the same name.
 */

int Combinations(int n, int k)
{
    return (Factorial(n) / (Factorial(k) * Factorial(n - k)));
}

/*
 * Function: Factorial
 * Usage: f = Factorial(n);
 * ------------------------
 * Returns the factorial of the argument n, where factorial
 * is defined as the product of all integers from 1 up to n.
 */

int Factorial(int n)
{
    int product, i;

    product = 1;
    for (i = 1; i <= n; i++) {
        product *= i;
    }
    return (product);
}
