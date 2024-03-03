/*
 * File: oddeven.c
 * ---------------
 * Reads in a number and classifies it as even or odd.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int n;

    printf("Program to classify a number as even or odd.\n");
    printf("n = ? ");
    n = GetInteger();
    if (n % 2 == 0) {
        printf("That number is even.\n");
    } else {
        printf("That number is odd.\n");
    }
}
