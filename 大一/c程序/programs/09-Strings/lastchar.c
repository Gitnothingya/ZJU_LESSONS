/*
 * File: lastchar.c
 * ----------------
 * This file defines the function LastChar, which returns the
 * last character in a string.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/* Function prototypes */

char LastChar(string str);

/* Main program */

main()
{
    string str;

    printf("This program displays the last character in a string.\n");
    printf("Enter a string: ");
    str = GetLine();
    printf("The last character is '%c'\n", LastChar(str));
}

/*
 * Function: LastChar
 * Usage: ch = LastChar(str);
 * --------------------------
 * This function returns the last character in the string str.
 * If LastChar is called on the empty string, an error condition
 * is reported because the IthChar function performs range
 * checking on the index.
 */

char LastChar(string str)
{
    return (IthChar(str, StringLength(str) - 1));
}
