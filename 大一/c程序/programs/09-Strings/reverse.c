/*
 * File: reverse.c
 * ---------------
 * This file defines the function ReverseString(str),
 * which returns str with its characters reversed.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/* Function prototypes */

string ReverseString(string str);

/* Main program */

main()
{
    string str;

    printf("Enter a string: ");
    str = GetLine();
    printf("\"%s\" backwards is \"%s\"\n", str, ReverseString(str));
}

/*
 * Function: ReverseString
 * Usage: newstr = ReverseString(str);
 * -----------------------------------
 * Returns a new string consisting of the characters in
 * str in reverse order.
 */

string ReverseString(string str)
{
    string result;
    int i;

    result = "";
    for (i = 0; i < StringLength(str); i++) {
        result = Concat(CharToString(IthChar(str, i)), result);
    }
    return (result);
}
