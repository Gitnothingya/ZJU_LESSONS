/*
 * File: signtest.c
 * ----------------
 * Reads in a number and classifies it according to its sign.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int n;

    printf("Program to classify a number by its sign.\n");
    printf("n = ? ");
    n = GetInteger();
    if (n > 0) {
        printf("That number is positive.\n");
    } else if (n == 0) {
        printf("That number is zero.\n");
    } else {
        printf("That number is negative.\n");
    }
}
