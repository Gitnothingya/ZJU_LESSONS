# Makefile for cbook/05-Functions/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    gameloop \
    iseven \
    c2ftable \
    fact \
    combine \
    calendar 

# ***************************************************************
# Parameters to control Makefile operation
# Note that the gccx command script must be defined

CC = gccx
CFLAGS = 

# ***************************************************************
# Entry to bring the package up to date

all: $(PROGRAMS)

# ***************************************************************
# Standard entries to remove files from the directories
#    tidy    -- eliminate unwanted files
#    scratch -- delete derived files in preparation for rebuild

tidy:
	rm -f ,* .,* *~ core a.out graphics.ps

scratch: tidy
	rm -f *.o *.a $(PROGRAMS)

# ***************************************************************
# C compilations

gameloop.o: gameloop.c
	$(CC) $(CFLAGS) -c gameloop.c

iseven.o: iseven.c
	$(CC) $(CFLAGS) -c iseven.c

c2ftable.o: c2ftable.c
	$(CC) $(CFLAGS) -c c2ftable.c

fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c

combine.o: combine.c
	$(CC) $(CFLAGS) -c combine.c

calendar.o: calendar.c
	$(CC) $(CFLAGS) -c calendar.c


gameloop: gameloop.o
	$(CC) $(CFLAGS) -o gameloop gameloop.o

iseven: iseven.o
	$(CC) $(CFLAGS) -o iseven iseven.o

c2ftable: c2ftable.o
	$(CC) $(CFLAGS) -o c2ftable c2ftable.o

fact: fact.o
	$(CC) $(CFLAGS) -o fact fact.o

combine: combine.o
	$(CC) $(CFLAGS) -o combine combine.o

calendar: calendar.o
	$(CC) $(CFLAGS) -o calendar calendar.o
