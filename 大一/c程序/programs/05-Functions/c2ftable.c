/*
 * File: c2ftable.c
 * ----------------
 * This program illustrates the use of functions by generating
 * a table of Celsius to Fahrenheit conversions.
 */

#include <stdio.h>
#include "genlib.h"

/*
 * Constants
 * ---------
 * LowerLimit -- Starting value for temperature table
 * UpperLimit -- Final value for temperature table
 * StepSize   -- Step size between table entries
 */

#define LowerLimit   0
#define UpperLimit 100
#define StepSize     5

/* Function prototypes */

double CelsiusToFahrenheit(double c);

/* Main program */

main()
{
    int c;

    printf("Celsius to Fahrenheit table.\n");
    printf("  C    F\n");
    for (c = LowerLimit; c <= UpperLimit; c += StepSize) {
        printf("%3d  %3g\n", c, CelsiusToFahrenheit(c));
    }
}

/*
 * Function: CelsiusToFahrenheit
 * Usage: f = CelsiusToFahrenheit(c);
 * ----------------------------------
 * Returns the Fahrenheit equivalent of the Celsius
 * temperature c.
 */

double CelsiusToFahrenheit(double c)
{
    return (9.0 / 5.0 * c + 32);
}
