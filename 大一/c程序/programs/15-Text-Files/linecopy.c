/*
 * File: linecopy.c
 * ----------------
 * This program copies one file to another using line I/O.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constants
 * ---------
 * MaxLine -- Size of the buffer used in CopyFile
 */

#define MaxLine 100

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
 * CopyFile and for closing them afterward.  This implementation
 * uses line I/O to perform the copy.  Note that this approach
 * works correctly even if the file contains a line longer than
 * MaxLine; long lines are simply copied in pieces.
 */

static void CopyFile(FILE *infile, FILE *outfile)
{
    char buffer[MaxLine];

    while (fgets(buffer, MaxLine, infile) != NULL) {
        fputs(buffer, outfile);
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
