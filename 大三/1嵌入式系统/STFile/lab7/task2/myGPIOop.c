#include "myGPIOop.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

int check_export(int pin)
{
    char path[DIRECTION_MAX];
    int fd;
 
    snprintf(path, DIRECTION_MAX, "/sys/class/gpio/gpio%d", pin);
    return access(path,0);
}

int gpio_export(int pin)
{
    char buffer[BUFFER_MAX];
    int len;
    int fd;
 
    fd = open("/sys/class/gpio/export", O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "Failed to open export for writing!\n");
        return(-1);
    }
 
    len = snprintf(buffer, BUFFER_MAX, "%d", pin);
    if (write(fd, buffer, len) < 0) {
        fprintf(stderr, "Fail to export gpio%d!\n",pin);
        return -1;
    }
   
    close(fd);
    return 0;
}
int gpio_unexport(int pin)
{
    char buffer[BUFFER_MAX];
    int len;
    int fd;
 
    fd = open("/sys/class/gpio/unexport", O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "Failed to open unexport for writing!\n");
        return -1;
    }
 
    len = snprintf(buffer, BUFFER_MAX, "%d", pin);
    if (write(fd, buffer, len) < 0) {
        fprintf(stderr, "Fail to unexport gpio%d!\n",pin);
        return -1;
    }
   
    close(fd);
    return 0;
}


int gpio_direction(int pin, int dir)
{
    const char dir_str[] = "in\0out";
    char path[DIRECTION_MAX];
    int fd;
 
    snprintf(path, DIRECTION_MAX, "/sys/class/gpio/gpio%d/direction", pin);
    fd = open(path, O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "failed to open gpio%d direction for writing!\n",pin);
        return -1;
    }
 
    if (write(fd, &dir_str[dir == IN ? 0 : 3], dir == IN ? 2 : 3) < 0) {
        fprintf(stderr, "failed to set gpio%d direction!\n",pin);
        return -1;
    }
 
    close(fd);
    return 0;
}

int gpio_write(int pin, int value)
{
    const char values_str[] = "01";
    char path[DIRECTION_MAX];
    int fd;
 
    snprintf(path, DIRECTION_MAX, "/sys/class/gpio/gpio%d/value", pin);
    fd = open(path, O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "failed to open gpio%d value for writing!\n",pin);
        return -1;
    }
 
    if (write(fd, &values_str[value == LOW ? 0 : 1], 1) < 0) {
        fprintf(stderr, "failed to write gpio%d value!\n",pin);
        return -1;
    }
 
    close(fd);
    return 0;
}

int gpio_read(int pin)
{
    char path[DIRECTION_MAX];
    char value_str[3];
    int fd;
 
    snprintf(path, DIRECTION_MAX, "/sys/class/gpio/gpio%d/value", pin);
    fd = open(path, O_RDONLY);
    if (fd < 0) {
        fprintf(stderr, "failed to open gpio%d value for reading!\n",pin);
        return -1;
    }
 
    if (read(fd, value_str, 3) < 0) {
        fprintf(stderr, "failed to read value!\n");
        return -1;
    }
 
    close(fd);
    return (atoi(value_str));
}