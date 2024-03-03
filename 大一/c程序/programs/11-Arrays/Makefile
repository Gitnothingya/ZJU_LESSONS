# Makefile for cbook/11-Arrays/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    gymjudge \
    reverse \
    testrev \
    countlet 

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

gymjudge.o: gymjudge.c
	$(CC) $(CFLAGS) -c gymjudge.c

reverse.o: reverse.c
	$(CC) $(CFLAGS) -c reverse.c

testrev.o: testrev.c
	$(CC) $(CFLAGS) -c testrev.c

countlet.o: countlet.c
	$(CC) $(CFLAGS) -c countlet.c


gymjudge: gymjudge.o
	$(CC) $(CFLAGS) -o gymjudge gymjudge.o

reverse: reverse.o
	$(CC) $(CFLAGS) -o reverse reverse.o

testrev: testrev.o
	$(CC) $(CFLAGS) -o testrev testrev.o

countlet: countlet.o
	$(CC) $(CFLAGS) -o countlet countlet.o
