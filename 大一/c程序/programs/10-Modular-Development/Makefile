# Makefile for cbook/10-Modular-Development/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    piglatin 

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

scanner.o: scanner.c scanner.h
	$(CC) $(CFLAGS) -c scanner.c

piglatin.o: piglatin.c scanner.h
	$(CC) $(CFLAGS) -c piglatin.c


piglatin: piglatin.o scanner.o
	$(CC) $(CFLAGS) -o piglatin piglatin.o scanner.o
