# Makefile for cbook/06-Algorithms/programs
# Created by the ExportAll facility
# ***************************************************************

PROGRAMS = \
    primes1 \
    primes2 \
    primes3 \
    gcd \
    euclid \
    nsqrt \
    zeno \
    tsqrt 

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

primes1.o: primes1.c
	$(CC) $(CFLAGS) -c primes1.c

primes2.o: primes2.c
	$(CC) $(CFLAGS) -c primes2.c

primes3.o: primes3.c
	$(CC) $(CFLAGS) -c primes3.c

gcd.o: gcd.c
	$(CC) $(CFLAGS) -c gcd.c

euclid.o: euclid.c
	$(CC) $(CFLAGS) -c euclid.c

nsqrt.o: nsqrt.c
	$(CC) $(CFLAGS) -c nsqrt.c

zeno.o: zeno.c
	$(CC) $(CFLAGS) -c zeno.c

tsqrt.o: tsqrt.c
	$(CC) $(CFLAGS) -c tsqrt.c


primes1: primes1.o
	$(CC) $(CFLAGS) -o primes1 primes1.o

primes2: primes2.o
	$(CC) $(CFLAGS) -o primes2 primes2.o

primes3: primes3.o
	$(CC) $(CFLAGS) -o primes3 primes3.o

gcd: gcd.o
	$(CC) $(CFLAGS) -o gcd gcd.o

euclid: euclid.o
	$(CC) $(CFLAGS) -o euclid euclid.o

nsqrt: nsqrt.o
	$(CC) $(CFLAGS) -o nsqrt nsqrt.o

zeno: zeno.o
	$(CC) $(CFLAGS) -o zeno zeno.o

tsqrt: tsqrt.o
	$(CC) $(CFLAGS) -o tsqrt tsqrt.o
