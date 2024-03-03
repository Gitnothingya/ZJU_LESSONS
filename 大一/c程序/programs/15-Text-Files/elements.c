/*
 * File: elements.c
 * ----------------
 * This program copies the information from the elements.dat
 * file into a table formatted into fixed-width columns.  The
 * data values in the file are read using fscanf.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constants
 * ---------
 * ElementsFile   -- Name of the elements data file
 * MaxElementName -- Maximum length of element name
 * MaxSymbolName  -- Maximum length of element symbol
 */

#define ElementsFile   "elements.dat"
#define MaxElementName 15
#define MaxSymbolName   2

/* Main program */

main()
{
    FILE *infile;
    char elementName[MaxElementName+1];
    char elementSymbol[MaxSymbolName+1];
    char namebuf[MaxElementName+MaxSymbolName+4];
    int atomicNumber;
    double atomicWeight;
    char termch;
    int nscan;

    infile = fopen(ElementsFile, "r");
    if (infile == NULL) Error("Can't open %s", ElementsFile);
    printf("     Element (symbol)    Atomic Weight\n");
    printf("--------------------------------------\n");
    while (TRUE) {
        nscan = fscanf(infile, "%15[^,], %2[^,], %d, %lf%c",
                               elementName, elementSymbol,
                               &atomicNumber, &atomicWeight,
                               &termch);
        if (nscan == EOF) break;
        if (nscan != 5 || termch != '\n') {
            Error("Improper file format");
        }
        sprintf(namebuf, "%s (%s)", elementName, elementSymbol);
        printf("%3d. %-20s %8.3f\n", atomicNumber, namebuf,
                                     atomicWeight);
    }
}
