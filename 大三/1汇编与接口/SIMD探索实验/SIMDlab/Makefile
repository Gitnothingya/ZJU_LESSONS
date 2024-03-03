CC = g++
OBJS = main.o bmp.o

CFLAG = -mavx -mavx512f -mavx512bw -mavx512vbmi -O3


simd: $(OBJS)
	$(CC) $(OBJS) -o $@ $(CFLAG)

main.o: main.cpp bmp.h
	$(CC) -c main.cpp $(CFLAG)

bmp.o: bmp.h bmp.cpp
	$(CC) -c bmp.cpp $(CFLAG)

clean:
	del main.o bmp.o simd.exe

run:simd
	./simd