/*
 * File: point.c
 * -------------
 * This program tests the functions defined for the type pointT.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/*
 * Type: pointT
 * ------------
 * This structure represents a point in the x/y plane.
 */

typedef struct {
    double x, y;
} pointT;

/* Private function declarations */

pointT CreatePoint(double x, double y);
void DisplayPoint(pointT p);
pointT AddPoint(pointT p1, pointT p2);

/* Main program */

main()
{
    pointT p1, p2;
    pointT origin;

    origin = CreatePoint(0, 0);
    p1 = CreatePoint(2, 3);
    p2 = CreatePoint(4, 3);
    printf("AddPoint(p1, p2) = ");
    DisplayPoint(AddPoint(p1, p2));
    printf("\n");
}

pointT CreatePoint(double x, double y)
{
    pointT p;

    p.x = x;
    p.y = y;
    return (p);
}

void DisplayPoint(pointT p)
{
    printf("(%g, %g)", p.x, p.y);
}

pointT AddPoint(pointT p1, pointT p2)
{
    pointT p;

    p.x = p1.x + p2.x;
    p.y = p1.y + p2.y;
    return (p);
}
