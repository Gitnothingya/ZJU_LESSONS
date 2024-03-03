/*
 * File: qtest.c
 * -------------
 * This program tests the queue.h interface by simulating a
 * simple waiting line.  Entering a name adds that person to
 * the waiting line.  Entering a blank line removes the name
 * at the head of the line and displays it on the screen.
 * Typing "quit" exits from the program.
 */

#include <stdio.h>

#include "genlib.h"
#include "simpio.h"
#include "strlib.h"
#include "queue.h"

/* Main program */

main()
{
    queueADT waitingLine;
    string line, name;

    printf("Waiting line manager.\n");
    printf("Type a name to enter it into the line.\n");
    printf("Type a blank line to serve the first person in line.\n");
    printf("Type \"quit\" to exit from the program.\n");
    waitingLine = NewQueue();
    while (TRUE) {
        printf(":");
        line = GetLine();
        if (StringEqual(line, "quit")) break;
        if (StringEqual(line, "")) {
            if (QueueLength(waitingLine) == 0) {
                printf("No one is waiting\n");
            } else {
                name = Dequeue(waitingLine);
                printf("%s\n", name);
            }
        } else {
            Enqueue(waitingLine, line);
        }
    }
    return 0;
}
