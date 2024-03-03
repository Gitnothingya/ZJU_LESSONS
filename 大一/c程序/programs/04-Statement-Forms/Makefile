# Makefile for cbook/04-Statement-Forms/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    leapyear \
    oddeven \
    signtest \
    cardrank \
    digitsum \
    addlist \
    liftoff \
    timestab 

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

leapyear.o: leapyear.c
	$(CC) $(CFLAGS) -c leapyear.c

oddeven.o: oddeven.c
	$(CC) $(CFLAGS) -c oddeven.c

signtest.o: signtest.c
	$(CC) $(CFLAGS) -c signtest.c

cardrank.o: cardrank.c
	$(CC) $(CFLAGS) -c cardrank.c

digitsum.o: digitsum.c
	$(CC) $(CFLAGS) -c digitsum.c

addlist.o: addlist.c
	$(CC) $(CFLAGS) -c addlist.c

liftoff.o: liftoff.c
	$(CC) $(CFLAGS) -c liftoff.c

timestab.o: timestab.c
	$(CC) $(CFLAGS) -c timestab.c


leapyear: leapyear.o
	$(CC) $(CFLAGS) -o leapyear leapyear.o

oddeven: oddeven.o
	$(CC) $(CFLAGS) -o oddeven oddeven.o

signtest: signtest.o
	$(CC) $(CFLAGS) -o signtest signtest.o

cardrank: cardrank.o
	$(CC) $(CFLAGS) -o cardrank cardrank.o

digitsum: digitsum.o
	$(CC) $(CFLAGS) -o digitsum digitsum.o

addlist: addlist.o
	$(CC) $(CFLAGS) -o addlist addlist.o

liftoff: liftoff.o
	$(CC) $(CFLAGS) -o liftoff liftoff.o

timestab: timestab.o
	$(CC) $(CFLAGS) -o timestab timestab.o
