/*
 * File: digitsum.c
 * ----------------
 * This program sums the digits in a positive integer.
 * The program depends on the fact that the last digit of
 * a integer n is given by n % 10 and the number consisting
 * of all but the last digit is given by the expression n / 10.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int n, dsum;

    printf("This program sums the digits in an integer.\n");
    printf("Enter a positive integer: ");
    n = GetInteger();
    dsum = 0;
    while (n > 0) {
        dsum += n % 10;
        n /= 10;
    }
    printf("The sum of the digits is %d\n", dsum);
}
