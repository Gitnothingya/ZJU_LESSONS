/*
 * File: secondh.c
 * ---------------
 * This file defines the function SecondHalf(str),
 * which returns the second half of its argument.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/* Function prototypes */

string SecondHalf(string str);

/* Main program */

main()
{
    string str;

    printf("Enter a string: ");
    str = GetLine();
    printf("The second half of \"%s\" is \"%s\"\n", str,
           SecondHalf(str));
}

/*
 * Function: SecondHalf
 * Usage: newstr = SecondHalf(str);
 * --------------------------------
 * This function returns the second half of the string str.
 * If the string contains an odd number of characters, the
 * center character is included in the result.
 */

string SecondHalf(string str)
{
    int len;

    len = StringLength(str);
    return (SubString(str, len / 2, len - 1));
}
