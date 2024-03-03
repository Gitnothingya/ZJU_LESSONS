#ifndef _MYGPIOOP_H_
#define _MYGPIOOP_H_

#define BUFFER_MAX 50
#define DIRECTION_MAX 50

#define IN  0
#define OUT 1

#define LOW 0
#define HIGH 1

int check_export(int pin);
int gpio_export(int pin);
int gpio_unexport(int pin);
int gpio_direction(int pin, int dir);
int gpio_write(int pin, int value);
int gpio_read(int pin);


#endif