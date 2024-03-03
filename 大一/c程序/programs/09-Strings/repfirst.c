/*
 * File: repfirst.c
 * ----------------
 * This file implements and tests the function ReplaceFirst.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/* Function prototypes */

string ReplaceFirst(string str, string pattern, string replacement);

/* Main program */

main()
{
    string str, pattern, replacement;

    printf("This program edits a string by replacing the first\n");
    printf("instance of a pattern substring by a new string.\n");
    printf("Enter the string to be edited:\n");
    str = GetLine();
    printf("Enter the pattern string: ");
    pattern = GetLine();
    printf("Enter the replacement string: ");
    replacement = GetLine();
    str = ReplaceFirst(str, pattern, replacement);
    printf("%s\n", str);
}

/*
 * Function: ReplaceFirst
 * Usage: newstr = ReplaceFirst(str, pattern, replacement);
 * --------------------------------------------------------
 * This function searches through the string str and replaces the
 * first instance of the pattern with the specified replacement.
 * If the pattern string does not appear, str is returned unchanged.
 */

string ReplaceFirst(string str, string pattern, string replacement)
{
    string head, tail;
    int pos;

    pos = FindString(pattern, str, 0);
    if (pos == -1) return (str);
    head = SubString(str, 0, pos - 1);
    tail = SubString(str, pos + StringLength(pattern),
                          StringLength(str) - 1);
    return (Concat(Concat(head, replacement), tail));
}
