/*
 * File: hours.c
 * -------------
 * This program converts a time given in minutes into
 * separate values representing hours and minutes.  The
 * program is written as an illustration of C's mechanism
 * for simulating call by reference.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/* Constants */

#define MinutesPerHour 60

/* Function prototypes */

static void ConvertTimeToHM(int time, int *pHours, int *pMinutes);

/* Test program */

main()
{
    int time, hours, minutes;

    printf("Test program to convert time values\n");
    printf("Enter a time duration in minutes: ");
    time = GetInteger();
    ConvertTimeToHM(time, &hours, &minutes);
    printf("HH:MM format: %d:%02d\n", hours, minutes);
}

/*
 * Function: ConvertTimeToHM
 * Usage: ConvertTimeToHM(time, &hours, &minutes);
 * -----------------------------------------------
 * This function converts a time value given in minutes into
 * an integral number of hours and the remaining number of minutes.
 * Note that the last two arguments must be passed using their
 * addresses so that the function can correctly set those values.
 */

static void ConvertTimeToHM(int time, int *pHours, int *pMinutes)
{
    *pHours = time / MinutesPerHour;
    *pMinutes = time % MinutesPerHour;
}
