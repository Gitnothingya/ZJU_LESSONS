#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include<sys/types.h>
#include<sys/stat.h>
#include "myGPIOop.h"

#define Din 4
#define CS  3
#define CLK 2

void setBitData(int data);
void Write_Max7219_byte(int data);
void Write_Max7219(int addr, int data);

int heart[] = {0x00,0x66, 0xff, 0xff, 0xff, 0x7e, 0x3c, 0x18};

char line[] = {0xff,0,0,0,0,0,0,0};

static int gpio_Max7219_init()
{
    if(check_export(Din) != 0){
        gpio_export(Din);
    }
    if(check_export(CS) != 0){
        gpio_export(CS);
    }
    if(check_export(CLK) != 0){
        gpio_export(CLK);
    }
    sleep(2);
    gpio_direction(Din, OUT);
    gpio_direction(CS, OUT);
    gpio_direction(CLK, OUT);

    Write_Max7219(0x09, 0x00); // 关闭译码模式
    Write_Max7219(0x0a, 0x00); // 设置led亮度 3 ,15最大
    Write_Max7219(0x0b, 0x07); // 设置扫描行数
    Write_Max7219(0x0c, 0x01); // 设置正常模式
    Write_Max7219(0x0f, 0x00); // 设置正常模式
}

void setBitData(int data)
{
    gpio_write(CLK, LOW);
    gpio_write(Din, data);
    
    gpio_write(CLK, HIGH);
}

void Write_Max7219_byte(int data)
{
   //printf("byte data:%d\n",data);
    int i;
    for(i = 0 ; i < 8 ; i++){
        if(((data <<i) & 0x80) == 0x80){
            setBitData(HIGH);
        }
        else {
            setBitData(LOW);
        }
       //printf("set bit: %d\n",(((data <<i) & 0x80) == 0x80));
    }
}

void Write_Max7219(int addr, int data)
{
   //printf("Write one:--------------------------------------\n");
    gpio_write(CS,LOW);
    Write_Max7219_byte(addr);
   //printf("addr:%d\n",addr);
    Write_Max7219_byte(data);
    //printf("data:%d\n",data);
    gpio_write(CS,HIGH);
    //printf("------------------------------------------------\n");
}

void ShowDotMatrix()
{
    int i=0;
    for (i=0;i<8;i++){
        Write_Max7219(i+1,line[i]);
    }
}
int main()
{
    gpio_Max7219_init();
    //gpio_write(CS,LOW);
    //gpio_write(CLK,LOW);
    //gpio_write(Din,HIGH);
    ShowDotMatrix();
    //sleep(5);
    return 0;
}
