/*
 * File: addlist.c
 * ---------------
 * This program adds a list of numbers.  The end of the
 * input is indicated by entering 0 as a sentinel value.
 * This version of the implementation uses a while loop
 * without a break statement, which forces some duplication
 * of code.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int value, total;

    printf("This program adds a list of numbers.\n");
    printf("Signal end of list with a 0.\n");
    total = 0;
    printf(" ? ");
    value = GetInteger();
    while (value != 0) {
        total += value;
        printf(" ? ");
        value = GetInteger();
    }
    printf("The total is %d\n", total);
}
