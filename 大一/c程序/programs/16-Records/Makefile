# Makefile for cbook/16-Records/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    employee \
    point \
    empdb \
    teach 

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

employee.o: employee.c
	$(CC) $(CFLAGS) -c employee.c

point.o: point.c
	$(CC) $(CFLAGS) -c point.c

empdb.o: empdb.c
	$(CC) $(CFLAGS) -c empdb.c

teach.o: teach.c
	$(CC) $(CFLAGS) -c teach.c


employee: employee.o
	$(CC) $(CFLAGS) -o employee employee.o

point: point.o
	$(CC) $(CFLAGS) -o point point.o

empdb: empdb.o
	$(CC) $(CFLAGS) -o empdb empdb.o

teach: teach.o
	$(CC) $(CFLAGS) -o teach teach.o
