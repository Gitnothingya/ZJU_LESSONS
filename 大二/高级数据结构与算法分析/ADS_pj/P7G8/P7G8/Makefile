CC = g++
OBJS = test1.o skiplist.o

main : $(OBJS)
	$(CC) $(OBJS) -o $@
	del test1.o skiplist.o list.o

test1.o : test1.cpp skiplist.h list.cpp
	$(CC) -c test1.cpp

skiplist.o : skiplist.cpp skiplist.h
	$(CC) -c skiplist.cpp