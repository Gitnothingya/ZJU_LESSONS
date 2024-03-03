/*
 * File: invert.c
 * --------------
 * This file implements a function InvertName(result, name)
 * that takes a name in standard order (first middle last) and
 * returns a new string in inverted order (last, first middle),
 * which makes it easier to alphabetize the names.  The test
 * program reads in names and prints out their inverted form,
 * stopping when a blank line is entered.
 */

#include <stdio.h>
#include <string.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constant
 * --------
 * MaxName -- Maximum number of characters in a name
 */

#define MaxName 40

/* Private function prototypes */

static void InvertName(char result[], char name[]);

/* Main program */

main()
{
    char *standardName;
    char invertedName[MaxName+1];

    printf("This program converts a name in standard order\n");
    printf("into inverted order with the last name first.\n");
    printf("Indicate the end of input with a blank line.\n");
    while (TRUE) {
        printf("Name: ");
        standardName = GetLine();
        if (strlen(standardName) == 0) break;
        InvertName(invertedName, standardName);
        printf("%s\n", invertedName);
    }
}

/*
 * Function: InvertName
 * Usage: InvertName(result, name);
 * --------------------------------
 * This function inverts a name from its standard order
 *
 *     First Middle Last
 *
 * into inverted order, which is
 *
 *     Last, First Middle
 *
 * The client must supply an output array called result in which
 * the inverted name will be stored.  That array must contain
 * at least MaxName character positions, plus one for a
 * terminating null character.  If storing the inverted name
 * would exceed that limit, the function generates an error.
 * The output is always one character longer than the input
 * because of the comma, so it is possible to determine the
 * output length immediately.
 *
 * The last name is assumed to consist of all characters in the
 * name string following the last space character.  If there are
 * no space characters in the word, the entire name is copied to
 * the destination array unchanged.
 */

static void InvertName(char result[], char name[])
{
    int len;
    char *sptr;

    len = strlen(name);
    sptr = strrchr(name, ' ');
    if (sptr != NULL) len++;
    if (len > MaxName) Error("Name too long");
    if (sptr == NULL) {
        strcpy(result, name);
    } else {
        strcpy(result, sptr + 1);
        strcat(result, ", ");
        strncat(result, name, sptr - name);
        result[len] = '\0';
    }
}
