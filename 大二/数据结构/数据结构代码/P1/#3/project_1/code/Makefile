SRCS = .\main.c .\solvers.c .\test.c
OBJS = .\main.o .\solvers.o .\test.o

ALL: .\main.exe .\header.exe
.\main.exe:$(OBJS)
	gcc $(OBJS) -o .\main.exe
	.\header.exe
	mingw32-make clean

$(OBJS):$(SRCS)
	gcc -c .\main.c -o .\main.o
	gcc -c .\solvers.c -o .\solvers.o
	gcc -c .\test.c -o .\test.o

.\header.exe:.\header.c
	gcc .\header.c -o .\header.exe
	
.PHONY:clean
clean:
	del $(OBJS)