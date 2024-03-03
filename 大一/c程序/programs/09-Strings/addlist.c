/*
 * File: addlist.c
 * ---------------
 * This program adds a list of numbers.  The end of the input
 * is indicated by entering a blank line as a sentinel value.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"
#include "strlib.h"

main()
{
    int total;
    string line;

    printf("This program adds a list of numbers.\n");
    printf("Signal end of list with a blank line.\n");
    total = 0;
    while (TRUE) {
        printf(" ? ");
        line = GetLine();
        if (StringEqual(line, "")) break;
        total += StringToInteger(line);
    }
    printf("The total is %d\n", total);
}
