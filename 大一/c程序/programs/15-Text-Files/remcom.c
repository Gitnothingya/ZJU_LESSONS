/*
 * File: remcom.c
 * --------------
 * This program eliminates comments from a file.  This version
 * does not ignore comments that appear in a string constant;
 * that change is left to the reader as an exercise.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Private function prototypes */

static void CopyRemovingComments(FILE *infile, FILE *outfile);
static FILE *OpenUserFile(string prompt, string mode);

/* Main program */

main()
{
    FILE *infile;

    printf("This program removes comments from a file.\n");
    infile = OpenUserFile("Input file:  ", "r");
    CopyRemovingComments(infile, stdout);
    fclose(infile);
}

/*
 * Function: CopyRemovingComments
 * Usage: CopyRemovingComments(infile, outfile);
 * ---------------------------------------------
 * This function copies one file to another, removing comments
 * as it goes.  The status indicator as to whether a comment is
 * being read is stored in commentFlag.
 */

static void CopyRemovingComments(FILE *infile, FILE *outfile)
{
    int ch, nch;
    bool commentFlag;

    commentFlag = FALSE;
    while ((ch = getc(infile)) != EOF) {
        if (commentFlag) {
            if (ch == '*') {
                nch = getc(infile);
                if (nch == '/') {
                    commentFlag = FALSE;
                } else {
                    ungetc(nch, infile);
                }
            }
        } else {
            if (ch == '/') {
                nch = getc(infile);
                if (nch == '*') {
                    commentFlag = TRUE;
                } else {
                    ungetc(nch, infile);
                }
            }
            if (!commentFlag) putc(ch, outfile);
        }
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
