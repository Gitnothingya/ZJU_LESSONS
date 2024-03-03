# Makefile for cbook/15-Text-Files/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    showfile \
    copyfile \
    ucfile \
    remcom \
    linecopy \
    elements 

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

showfile.o: showfile.c
	$(CC) $(CFLAGS) -c showfile.c

copyfile.o: copyfile.c
	$(CC) $(CFLAGS) -c copyfile.c

ucfile.o: ucfile.c
	$(CC) $(CFLAGS) -c ucfile.c

remcom.o: remcom.c
	$(CC) $(CFLAGS) -c remcom.c

linecopy.o: linecopy.c
	$(CC) $(CFLAGS) -c linecopy.c

elements.o: elements.c
	$(CC) $(CFLAGS) -c elements.c


showfile: showfile.o
	$(CC) $(CFLAGS) -o showfile showfile.o

copyfile: copyfile.o
	$(CC) $(CFLAGS) -o copyfile copyfile.o

ucfile: ucfile.o
	$(CC) $(CFLAGS) -o ucfile ucfile.o

remcom: remcom.o
	$(CC) $(CFLAGS) -o remcom remcom.o

linecopy: linecopy.o
	$(CC) $(CFLAGS) -o linecopy linecopy.o

elements: elements.o
	$(CC) $(CFLAGS) -o elements elements.o
