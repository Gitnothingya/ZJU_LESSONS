/*
 * File: ucfile.c
 * --------------
 * This program updates the contents of a file by converting all
 * letters to upper case.
 */

#include <stdio.h>
#include <ctype.h>
#include "genlib.h"
#include "simpio.h"

/* Private function prototypes */

static void UpperCaseCopy(FILE *infile, FILE *outfile);

/* Main program */

main()
{
    string filename, temp;
    FILE *infile, *outfile;

    printf("This program converts a file to upper case.\n");
    while (TRUE) {
        printf("File name: ");
        filename = GetLine();
        infile = fopen(filename, "r");
        if (infile != NULL) break;
        printf("File %s not found -- try again.\n", filename);
    }
    temp = tmpnam(NULL);
    outfile = fopen(temp, "w");
    if (outfile == NULL) Error("Can't open temporary file");
    UpperCaseCopy(infile, outfile);
    fclose(infile);
    fclose(outfile);
    if (remove(filename) != 0 || rename(temp, filename) != 0) {
        Error("Unable to rename temporary file");
    }
}

/*
 * Function: UpperCaseCopy
 * Usage: UpperCaseCopy(infile, outfile);
 * --------------------------------------
 * This function copies the contents of infile to outfile,
 * converting alphabetic characters to upper case as it does so.
 * The client is responsible for opening and closing the files.
 */

static void UpperCaseCopy(FILE *infile, FILE *outfile)
{
    int ch;

    while ((ch = getc(infile)) != EOF) {
        putc(toupper(ch), outfile);
    }
}
