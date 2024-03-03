/*
 * File: gameloop.c
 * ----------------
 * This program is used as an illustration of the
 * StringEqual function.
 */

#include <stdio.h>
#include "genlib.h"
#include "simpio.h"
#include "strlib.h"

/* Function prototypes */

void PlayOneGame(void);

/* Main program */

main()
{
    string answer;

    while (TRUE) {
        PlayOneGame();
        printf("Would you like to play again? ");
        answer = GetLine();
        if (StringEqual(answer, "no")) break;
    }
}

/*
 * Function: PlayOneGame
 * Usage: PlayOneGame();
 * ---------------------
 * This is a dummy function that could be replaced by
 * any game-playing program.
 */

void PlayOneGame()
{
    printf(". . . play the game . . .\n");
}
