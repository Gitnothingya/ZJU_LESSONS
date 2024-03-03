/*
 * File: leapyear.c
 * ----------------
 * Reads in a year and determines whether it is a
 * leap year.  A year is a leap year if it is
 * divisible by four, unless it is divisible by 100.
 * Years divisible by 100 are leap years only if
 * divisible by 400.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int year;
    bool isLeapYear;

    printf("Program to determine whether a year is a leap year.\n");
    printf("What year? ");
    year = GetInteger();
    isLeapYear = ((year % 4 == 0) && (year % 100 != 0))
                 || (year % 400 == 0);
    if (isLeapYear) {
        printf("%d is a leap year.\n", year);
    } else {
        printf("%d is not a leap year.\n", year);
    }
}
