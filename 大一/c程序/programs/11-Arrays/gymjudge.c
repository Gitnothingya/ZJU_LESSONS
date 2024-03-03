/*
 * File: gymjudge.c
 * ----------------
 * This program averages a set of five gymnastic scores.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

/*
 * Constants
 * ---------
 * NJudges -- Number of judges
 */

#define NJudges 5

/* Main program */

main()
{
    double gymnasticScores[NJudges];
    double total, average;
    int i;

    printf("Please enter a score for each judge.\n");
    for (i = 0; i < NJudges; i++) {
        printf("Score for judge #%d:  ", i);
        gymnasticScores[i] = GetReal();
    }
    total = 0;
    for (i = 0; i < NJudges; i++) {
        total += gymnasticScores[i];
    }
    average = total / NJudges;
    printf("The average score is %.2f\n", average);
}
