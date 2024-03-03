/*
 * File: cardrank.c
 * ----------------
 * Reads in a number between 1 and 13 and writes out the
 * appropriate symbol for a playing card of that rank.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    int n;

    printf("What is the rank of the card (1-13)? ");
    n = GetInteger();
    switch (n) {
      case  1: printf("Ace\n"); break;
      case 11: printf("Jack\n"); break;
      case 12: printf("Queen\n"); break;
      case 13: printf("King\n"); break;
      default: printf("%d\n", n); break;
    }
}
