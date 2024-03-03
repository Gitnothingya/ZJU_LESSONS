/*
 * File: protect.c
 * ---------------
 * This file defines the function ProtectedIntegerField,
 * which might be useful in a financial application, in
 * which it was important to guard against having someone
 * forge extra digits at the beginning of a number.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"

/* Function prototypes */

string ProtectedIntegerField(int n, int places);
string ConcatNCopies(int n, string str);

/* Main program */

main()
{
    printf("$%s.00\n", ProtectedIntegerField(123, 8));
}

string ProtectedIntegerField(int n, int places)
{
    string numstr, fill;

    numstr = IntegerToString(n);
    fill = ConcatNCopies(places - StringLength(numstr), "*");
    return (Concat(fill, numstr));
}

/*
 * Function: ConcatNCopies
 * Usage: newstr = ConcatNCopies(n, str);
 * --------------------------------------
 * This function creates a new string consisting of n
 * copies of str concatenated together.  For example,
 * the call ConcatNCopies(4, "AB") returns the string
 * "ABABABAB".  This implementation is quite inefficient,
 * both in its running time and use of memory, and should
 * not be used in practical applications.
 */

string ConcatNCopies(int n, string str)
{
    string result;
    int i;

    result = "";
    for (i = 0; i < n; i++) {
        result = Concat(result, str);
    }
    return (result);
}
