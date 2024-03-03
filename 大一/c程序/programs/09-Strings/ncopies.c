/*
 * File: ncopies.c
 * ---------------
 * This file defines the function ConcatNCopies(n, str),
 * which returns a string consisting of n copies of the
 * argument str concatenated together.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"

/* Function prototypes */

string ConcatNCopies(int n, string str);

/* Main program */

main()
{
    printf("The next line could be used as a section divider.\n");
    printf("%s\n", ConcatNCopies(25, "- "));
}

/*
 * Function: ConcatNCopies
 * Usage: newstr = ConcatNCopies(n, str);
 * --------------------------------------
 * This function creates a new string consisting of n
 * copies of str concatenated together.  For example,
 * the call ConcatNCopies(4, "AB") returns the string
 * "ABABABAB".  This implementation is quite inefficient,
 * both in its running time and use of memory, and should
 * not be used in practical applications.
 */

string ConcatNCopies(int n, string str)
{
    string result;
    int i;

    result = "";
    for (i = 0; i < n; i++) {
        result = Concat(result, str);
    }
    return (result);
}
