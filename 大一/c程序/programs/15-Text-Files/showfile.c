/*
 * File: showfile.c
 * ----------------
 * This program reads a file name from the user and displays
 * the contents of that file on the console.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Main program */

main()
{
    string filename;
    FILE *infile;
    char ch;

    printf("This program displays an input file.\n");
    while (TRUE) {
        printf("Input file name: ");
        filename = GetLine();
        infile = fopen(filename, "r");
        if (infile != NULL) break;
        printf("Can't open the file %s.  Try again.\n", filename);
    }
    while ((ch = getc(infile)) != EOF) {
        putc(ch, stdout);
    }
}
