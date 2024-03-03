# Makefile for cbook/13-Pointers/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    testsort \
    hours 

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

hours.o: hours.c
	$(CC) $(CFLAGS) -c hours.c

sort.o: sort.c sort.h
	$(CC) $(CFLAGS) -c sort.c

testsort.o: testsort.c sort.h
	$(CC) $(CFLAGS) -c testsort.c


testsort: testsort.o sort.o
	$(CC) $(CFLAGS) -o testsort testsort.o sort.o

hours: hours.o
	$(CC) $(CFLAGS) -o hours hours.o
