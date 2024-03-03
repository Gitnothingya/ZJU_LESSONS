# Makefile for cbook/14-Strings-Revisited/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    invert 

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

invert.o: invert.c
	$(CC) $(CFLAGS) -c invert.c


invert: invert.o
	$(CC) $(CFLAGS) -o invert invert.o
