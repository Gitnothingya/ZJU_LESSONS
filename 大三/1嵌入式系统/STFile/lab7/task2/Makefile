main:task2.o myGPIOop.o
	gcc task2.o myGPIOop.o -o task
task2:
	gcc -c task2.c 
gpio: myGPIOop.h
	gcc -c myGPIOop.c
clean:
	rm task2.o myGPIOop.o
run:
	./task