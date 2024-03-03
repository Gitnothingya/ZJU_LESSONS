# Makefile for cbook/08-Random-Numbers/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    randtest \
    cointest \
    dicetest \
    craps 

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

randtest.o: randtest.c
	$(CC) $(CFLAGS) -c randtest.c

cointest.o: cointest.c
	$(CC) $(CFLAGS) -c cointest.c

dicetest.o: dicetest.c
	$(CC) $(CFLAGS) -c dicetest.c

craps.o: craps.c
	$(CC) $(CFLAGS) -c craps.c


randtest: randtest.o
	$(CC) $(CFLAGS) -o randtest randtest.o

cointest: cointest.o
	$(CC) $(CFLAGS) -o cointest cointest.o

dicetest: dicetest.o
	$(CC) $(CFLAGS) -o dicetest dicetest.o

craps: craps.o
	$(CC) $(CFLAGS) -o craps craps.o
