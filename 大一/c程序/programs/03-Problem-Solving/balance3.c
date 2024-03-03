
#include <stdio.h>
#include "genlib.h"
#include "simpio.h"

main()
{
    char ch;

    while (TRUE) {
        ch = getchar();
        putchar(ch);
        if (ch == '\n') break;
    }
    system("pause");
}
