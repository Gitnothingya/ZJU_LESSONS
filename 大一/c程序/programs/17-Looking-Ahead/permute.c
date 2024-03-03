/*
 * File: permute.c
 * ---------------
 * This file implements and tests the ListPermutation function.
 */

#include <stdio.h>
#include "genlib.h"
#include "strlib.h"
#include "simpio.h"

/* Private function prototypes */

static void ListPermutations(string str);
static void PermuteWithFixedPrefix(string str, int k);
static void ExchangeCharacters(string str, int p1, int p2);

/* Main program */

main()
{
    string str;

    printf("This program lists all permutations of a string.\n");
    printf("Enter a string: ");
    str = GetLine();
    ListPermutations(str);
}

/*
 * Function: ListPermutations
 * Usage: ListPermutations(str)
 * ----------------------------
 * This function lists all permutations of the characters
 * in the string str.
 */

static void ListPermutations(string str)
{
    PermuteWithFixedPrefix(str, 0);
}

/*
 * Function: PermuteWithFixedPrefix
 * Usage: PermuteWithFixedPrefix(str, k);
 * --------------------------------------
 * This function implements the recursive permutation algorithm.
 * In English, this function corresponds to the imperative
 * statement: Generate and print all permutations of the string
 * str, holding the first k character fixed.  The recursive insight
 * is that the permutations of n characters consist of each of
 * those characters followed by all permutations of the remaining
 * n-1 characters.
 */

static void PermuteWithFixedPrefix(string str, int k)
{
    int i;

    if (k == StringLength(str)) {
        printf("%s\n", str);
    } else {
        for (i = k; i < StringLength(str); i++) {
            ExchangeCharacters(str, k, i);
            PermuteWithFixedPrefix(str, k + 1);
            ExchangeCharacters(str, k, i);
        }
    }
}

/*
 * Function: ExchangeCharacters
 * Usage: ExchangeCharacters(str, p1, p2);
 * ---------------------------------------
 * This function exchanges the characters at positions p1
 * and p2 of the string s.
 */

static void ExchangeCharacters(string str, int p1, int p2)
{
    char tmp;

    tmp = str[p1];
    str[p1] = str[p2];
    str[p2] = tmp;
}
