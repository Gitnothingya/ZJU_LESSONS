/*
 * File: piglatin.c
 * ----------------
 * This program translates a line of text from English
 * to Pig Latin.  The rules for forming Pig Latin words
 * are as follows:
 *
 * o  If the word begins with a vowel, add "way" to the
 *    end of the word.
 *
 * o  If the word begins with a consonant, extract the set
 *    of consonants up to the first vowel, move that set
 *    of consonants to the end of the word, and add "ay".
 */

#include <stdio.h>
#include <ctype.h>

#include "genlib.h"
#include "strlib.h"
#include "simpio.h"
#include "scanner.h"

/* Private function prototypes */

static void TranslateLine(string line);
static bool IsLegalWord(string token);
static string TranslateWord(string word);
static int FindFirstVowel(string word);
static bool IsVowel(char ch);

/* Main program */

main()
{
    string line;

    printf("Enter a line: ");
    line = GetLine();
    TranslateLine(line);
}

/*
 * Function: TranslateLine
 * Usage: TranslateLine(line);
 * ---------------------------
 * This function takes a line of text and translates
 * the words in the line to Pig Latin, displaying the
 * translation as it goes.
 */

static void TranslateLine(string line)
{
    string token;

    InitScanner(line);
    while (!AtEndOfLine()) {
        token = GetNextToken();
        if (IsLegalWord(token)) token = TranslateWord(token);
        printf("%s", token);
    }
    printf("\n");
}

/*
 * Function: IsLegalWord
 * Usage: if (IsLegalWord(token)) ...
 * ----------------------------------
 * IsLegalWord returns TRUE if every character in the argument
 * token is alphabetic.
 */

static bool IsLegalWord(string token)
{
    int i;

    for (i = 0; i < StringLength(token); i++) {
        if (!isalpha(IthChar(token, i))) return (FALSE);
    }
    return (TRUE);
}

/*
 * Function: TranslateWord
 * Usage: word = TranslateWord(word)
 * ---------------------------------
 * This function translates a word from English to Pig Latin
 * and returns the translated word.
 */

static string TranslateWord(string word)
{
    int vp;
    string head, tail;

    vp = FindFirstVowel(word);
    if (vp == -1) {
        return (word);
    } else if (vp == 0) {
        return (Concat(word, "way"));
    } else {
        head = SubString(word, 0, vp - 1);
        tail = SubString(word, vp, StringLength(word) - 1);
        return (Concat(tail, Concat(head, "ay")));
    }
}

/*
 * Function: FindFirstVowel
 * Usage: k = FindFirstVowel(word);
 * --------------------------------
 * FindFirstVowel returns the index position of the first vowel
 * in word.  If word does not contain a vowel, FindFirstVowel
 * returns -1.
 */

static int FindFirstVowel(string word)
{
    int i;

    for (i = 0; i < StringLength(word); i++) {
        if (IsVowel(IthChar(word, i))) return (i);
    }
    return (-1);
}

/*
 * Function: IsVowel
 * Usage: if (IsVowel(ch)) . . .
 * -----------------------------
 * IsVowel returns TRUE if ch is a vowel.  This function
 * recognizes vowels in either upper or lower case.
 */

static bool IsVowel(char ch)
{
    switch (tolower(ch)) {
      case 'a': case 'e': case 'i': case 'o': case 'u':
        return (TRUE);
      default:
        return (FALSE);
    }
}
