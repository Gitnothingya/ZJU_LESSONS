/*
 * File: acronym.c
 * ---------------
 * Implements and tests the Acronym function.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"
#include "strlib.h"

/* Function prototypes */

string Acronym(string str);

/* Main program */

main()
{
    string str;

    printf("This program generates acronyms.\n");
    printf("Indicate end of input with a blank line.\n");
    while (TRUE) {
        printf("String: ");
        str = GetLine();
        if (StringEqual(str, "")) break;
        printf("The acronym is %s.\n", Acronym(str));
    }
}

/*
 * Function: Acronym
 * Usage: acronym = Acronym(str);
 * ------------------------------
 * Takes a string consisting of a sequence of words and returns
 * the acronym formed by taking the initial letter of each word.
 * The program operates by finding each space in the word and
 * then concatenating the following letter onto the acronym so
 * far.  At the beginning, the acronym is set to be the first
 * character in the string.
 */

string Acronym(string str)
{
    string acronym;
    int pos;

    acronym = CharToString(IthChar(str, 0));
    pos = 0;
    while (TRUE) {
        pos = FindChar(' ', str, pos + 1);
        if (pos == -1) break;
        acronym = Concat(acronym,
                         CharToString(IthChar(str, pos + 1)));
    }
    return (acronym);
}
