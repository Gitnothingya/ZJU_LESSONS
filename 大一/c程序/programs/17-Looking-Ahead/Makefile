# Makefile for cbook/17-Looking-Ahead/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    qtest \
    testsort \
    fact \
    power \
    permute 

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

fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c

power.o: power.c
	$(CC) $(CFLAGS) -c power.c

permute.o: permute.c
	$(CC) $(CFLAGS) -c permute.c

queue.o: queue.c queue.h
	$(CC) $(CFLAGS) -c queue.c

qtest.o: qtest.c queue.h
	$(CC) $(CFLAGS) -c qtest.c

sort.o: sort.c sort.h
	$(CC) $(CFLAGS) -c sort.c

testsort.o: testsort.c sort.h
	$(CC) $(CFLAGS) -c testsort.c


qtest: qtest.o queue.o
	$(CC) $(CFLAGS) -o qtest qtest.o queue.o

testsort: testsort.o sort.o
	$(CC) $(CFLAGS) -o testsort testsort.o sort.o

fact: fact.o
	$(CC) $(CFLAGS) -o fact fact.o

power: power.o
	$(CC) $(CFLAGS) -o power power.o

permute: permute.o
	$(CC) $(CFLAGS) -o permute permute.o
