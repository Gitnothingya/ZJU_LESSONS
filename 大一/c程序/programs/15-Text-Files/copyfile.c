/*
 * File: copyfile.c
 * ----------------
 * This program copies one file to another using character I/O.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Private function prototypes */

static void CopyFile(FILE *infile, FILE *outfile);
static FILE *OpenUserFile(string prompt, string mode);

/* Main program */

main()
{
    FILE *infile, *outfile;

    printf("This program copies one file to another.\n");
    infile = OpenUserFile("Old file: ", "r");
    outfile = OpenUserFile("New file: ", "w");
    CopyFile(infile, outfile);
    fclose(infile);
    fclose(outfile);
}

/*
 * Function: CopyFile
 * Usage: CopyFile(infile, outfile);
 * ---------------------------------
 * This function copies the contents of infile to outfile.  The
 * client is responsible for opening these files before calling
 * CopyFile and for closing them afterward.
 */

static void CopyFile(FILE *infile, FILE *outfile)
{
    int ch;

    while ((ch = getc(infile)) != EOF) {
        putc(ch, outfile);
    }
}

/*
 * Function: OpenUserFile
 * Usage: fileptr = OpenUserFile(prompt, mode);
 * --------------------------------------------
 * This function prompts the user for a file name using the
 * prompt string supplied by the user and then attempts to
 * open that file with the specified mode.  If the file is
 * opened successfully, OpenUserFile returns the appropriate
 * file pointer.  If the open operation fails, the user is
 * informed of the failure and given an opportunity to enter
 * another file name.
 */

static FILE *OpenUserFile(string prompt, string mode)
{
    string filename;
    FILE *result;

    while (TRUE) {
        printf("%s", prompt);
        filename = GetLine();
        result = fopen(filename, mode);
        if (result != NULL) break;
        printf("Can't open the file \"%s\"\n", filename);
    }
    return (result);
}
