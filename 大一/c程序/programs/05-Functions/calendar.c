/*
 * File: calendar.c
 * ----------------
 * This program is used to generate a calendar for a year
 * entered by the user.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constants:
 * ----------
 * Days of the week are represented by the integers 0-6.
 * Months of the year are identified by the integers 1-12;
 * because this numeric representation for months is in
 * common use, no special constants are defined.
 */

#define Sunday     0
#define Monday     1
#define Tuesday    2
#define Wednesday  3
#define Thursday   4
#define Friday     5
#define Saturday   6

/* Function prototypes */

void GiveInstructions(void);
int GetYearFromUser(void);
void PrintCalendar(int year);
void PrintCalendarMonth(int month, int year);
void IndentFirstLine(int weekday);
int MonthDays(int month, int year);
int FirstDayOfMonth(int month, int year);
string MonthName(int month);
bool IsLeapYear(int year);

/* Main program */

main()
{
    int year;

    GiveInstructions();
    year = GetYearFromUser();
    PrintCalendar(year);
}

/*
 * Function: GiveInstructions
 * Usage: GiveInstructions();
 * --------------------------
 * This procedure prints out instructions to the user.
 */

void GiveInstructions(void)
{
    printf("This program displays a calendar for a full\n");
    printf("year.  The year must not be before 1900.\n");
}

/*
 * Function: GetYearFromUser
 * Usage: year = GetYearFromUser();
 * --------------------------------
 * This function reads in a year from the user and returns
 * that value.  If the user enters a year before 1900, the
 * function gives the user another chance.
 */

int GetYearFromUser(void)
{
    int year;

    while (TRUE) {
        printf("Which year? ");
        year = GetInteger();
        if (year >= 1900) return (year);
        printf("The year must be at least 1900.\n");
    }
}

/*
 * Function: PrintCalendar
 * Usage: PrintCalendar(year);
 * ---------------------------
 * This procedure prints a calendar for an entire year.
 */

void PrintCalendar(int year)
{
    int month;

    for (month = 1; month <= 12; month++) {
        PrintCalendarMonth(month, year);
        printf("\n");
    }
}

/*
 * Function: PrintCalendarMonth
 * Usage: PrintCalendarMonth(month, year);
 * ---------------------------------------
 * This procedure prints a calendar for the given month
 * and year.
 */

void PrintCalendarMonth(int month, int year)
{
    int weekday, nDays, day;

    printf("    %s %d\n", MonthName(month), year);
    printf(" Su Mo Tu We Th Fr Sa\n");
    nDays = MonthDays(month, year);
    weekday = FirstDayOfMonth(month, year);
    IndentFirstLine(weekday);
    for (day = 1; day <= nDays; day++) {
        printf(" %2d", day);
        if (weekday == Saturday) printf("\n");
        weekday = (weekday + 1) % 7;
    }
    if (weekday != Sunday) printf("\n");
}

/*
 * Function: IndentFirstLine
 * Usage: IndentFirstLine(weekday);
 * --------------------------------
 * This procedure indents the first line of the calendar
 * by printing enough blank spaces to get to the position
 * on the line corresponding to weekday.
 */

void IndentFirstLine(int weekday)
{
    int i;

    for (i = 0; i < weekday; i++) {
        printf("   ");
    }
}

/*
 * Function: MonthDays
 * Usage: ndays = MonthDays(month, year);
 * --------------------------------------
 * MonthDays returns the number of days in the indicated
 * month and year.  The year is required to handle leap years.
 */

int MonthDays(int month, int year)
{
    switch (month) {
      case 2:
        if (IsLeapYear(year)) return (29);
        return (28);
      case 4: case 6: case 9: case 11:
        return (30);
      default:
        return (31);
    }
}

/*
 * Function: FirstDayOfMonth
 * Usage: weekday = FirstDayOfMonth(month, year);
 * ----------------------------------------------
 * This function returns the day of the week on which the
 * indicated month begins.  This program simply counts
 * forward from January 1, 1900, which was a Monday.
 */

int FirstDayOfMonth(int month, int year)
{
    int weekday, i;

    weekday = Monday;
    for (i = 1900; i < year; i++) {
        weekday = (weekday + 365) % 7;
        if (IsLeapYear(i)) weekday = (weekday + 1) % 7;
    }
    for (i = 1; i < month; i++) {
        weekday = (weekday + MonthDays(i, year)) % 7;
    }
    return (weekday);
}

/*
 * Function: MonthName
 * Usage: name = MonthName(month);
 * -------------------------------
 * MonthName converts a numeric month in the range 1-12
 * into the string name for that month.
 */

string MonthName(int month)
{
    switch (month) {
      case  1: return ("January");
      case  2: return ("February");
      case  3: return ("March");
      case  4: return ("April");
      case  5: return ("May");
      case  6: return ("June");
      case  7: return ("July");
      case  8: return ("August");
      case  9: return ("September");
      case 10: return ("October");
      case 11: return ("November");
      case 12: return ("December");
      default: return ("Illegal month");
    }
}

/*
 * Function: IsLeapYear
 * Usage: if (IsLeapYear(year)) . . .
 * ----------------------------------
 * This function returns TRUE if year is a leap year.
 */

bool IsLeapYear(int year)
{
    return ( ((year % 4 == 0) && (year % 100 != 0))
             || (year % 400 == 0) );
}
