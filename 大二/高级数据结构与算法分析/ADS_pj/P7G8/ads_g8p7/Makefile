CC = g++
OBJS = main.o skiplist.o 

main : $(OBJS)
	$(CC) $(OBJS) -o $@
	del main.o skiplist.o list.o

main.o : main.cpp skiplist.h list.cpp
	$(CC) -c main.cpp

skiplist.o : skiplist.cpp skiplist.h
	$(CC) -c skiplist.cpp
