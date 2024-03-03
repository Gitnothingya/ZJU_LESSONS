/*
 * File: zeno.c
 * ------------
 * This program calculates the sum of the infinite
 * series suggested by Zeno's paradox:
 *
 *       1     1     1     1     1     1
 *      --- + --- + --- + --- + --- + --- + ...
 *       2     4     8    16    32    64
 */

#include <stdio.h>
#include "genlib.h"

main()
{
    double sum, term;

    sum = 0.0;
    term = 0.5;
    while (sum != sum + term) {
        sum += term;
        term /= 2;
    }
    printf("The sum of Zeno's series is %g\n", sum);
}
