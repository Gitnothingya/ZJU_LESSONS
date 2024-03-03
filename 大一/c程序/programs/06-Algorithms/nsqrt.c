/*
 * File: nsqrt.c
 * -------------
 * This program calculates square roots using Newton's
 * method for successive approximation.
 */

#include <stdio.h>
#include <math.h>
#include "genlib.h"

/*
 * Constants:
 * ----------
 * Epsilon -- The acceptable fraction of difference between
 *            two values that are approximately equal.
 */

#define Epsilon 0.0000000001

/* Function prototypes */

void TestSqrt(double x);
double Sqrt(double x);
bool ApproximatelyEqual(double x, double y);
double MinF(double x, double y);

/* Main program */

main()
{
    TestSqrt(0.0);
    TestSqrt(0.25);
    TestSqrt(1);
    TestSqrt(2);
    TestSqrt(3);
    TestSqrt(4);
    TestSqrt(49);
    TestSqrt(200);
    TestSqrt(1.0E10);
}

/*
 * Function: TestSqrt
 * Usage: TestSqrt(x);
 * -------------------
 * Generates a line of the test table.
 */

void TestSqrt(double x)
{
    double computed, actual;

    computed = Sqrt(x);
    actual = sqrt(x);
    printf("Sqrt(%g) = %g  sqrt(%g) = %g\n", x, computed, x, actual);
    if (!ApproximatelyEqual(computed, actual)) {
        printf("Warning! Computed value does not match actual!\n");
    }
}

/*
 * Function: Sqrt
 * Usage: root = Sqrt(x);
 * ----------------------
 * Returns the square root of x, calculated using
 * Newton's algorithm, as described in the text.
 */

double Sqrt(double x)
{
    double g;

    if (x == 0) return (0);
    if (x < 0) Error("Sqrt called with negative argument %g", x);
    g = x;
    while (!ApproximatelyEqual(x, g * g)) {
        g = (g + x / g) / 2;
    }
    return (g);
}

/*
 * Function: ApproximatelyEqual
 * Usage: if (ApproximatelyEqual(x, y)) . . .
 * ------------------------------------------
 * Returns TRUE if x and y are approximately equal, as
 * indicated by the formula:
 *
 *       | x - y |
 *     -------------  <  Epsilon
 *     min(|x|, |y|)
 *
 * To avoid the possibility of division by 0, the function
 * first tests to make sure that adding the denominator to
 * the numerator of this fraction changes the nominator.
 * This test has the same practical effect as checking
 * against 0 but avoids overflow in the case that the
 * denominator is very small.
 */

bool ApproximatelyEqual(double x, double y)
{
    double num, den;

    num = fabs(x - y);
    den = MinF(fabs(x), fabs(y));
    if (num + den == num) return (x == y);
    return (num / den < Epsilon);
}

/*
 * Function: MinF
 * Usage: min = MinF(x, y);
 * ------------------------
 * Returns the smaller of the two floating-point values x and y.
 */

double MinF(double x, double y)
{
    if (x < y) {
        return (x);
    } else {
        return (y);
    }
}
