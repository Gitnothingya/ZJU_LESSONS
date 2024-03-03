#include <bcm2835.h>
#include <stdio.h>
#include <time.h>

#define  CLK   RPI_BPLUS_GPIO_J8_03 
#define  CS   RPI_BPLUS_GPIO_J8_05 
#define  Din   RPI_BPLUS_GPIO_J8_07

void setBitData(int data);
void Write_Max7219_byte(int data);
void Write_Max7219(int addr, int data);
int gpio_Max7219_init();
int heart[] = {0x00,0x66, 0xff, 0xff, 0xff, 0x7e, 0x3c, 0x18};

char matrix[] = {0x99,0x66,0x5a,0xa5,0xa5,0x5a,0x66,0x99};

int gpio_Max7219_init() //初始化bcm2835库并设置好对应的GPIO
{
    if(!bcm2835_init())
    {
        printf("BCM2835 initialization fails !!!");
        return -1;
    }

    bcm2835_delay(800);//延时准备
    bcm2835_gpio_fsel(CS, BCM2835_GPIO_FSEL_OUTP);//配置GPIO方向为输出
    bcm2835_gpio_fsel(CLK, BCM2835_GPIO_FSEL_OUTP);
    bcm2835_gpio_fsel(Din, BCM2835_GPIO_FSEL_OUTP);

    // 设置Max7219
    Write_Max7219(0x09, 0x00); // 关闭译码模式
    Write_Max7219(0x0a, 0x00); // 设置led亮度 3 ,15最大
    Write_Max7219(0x0b, 0x07); // 设置扫描行数
    Write_Max7219(0x0c, 0x01); // 设置正常模式
    Write_Max7219(0x0f, 0x00); // 设置正常模式
}

void setBitData(int data)
{
    // 传输1bit数据，需要先拉低时钟再拉高，数据才会传输出去
    bcm2835_gpio_write(CLK, LOW); 
    bcm2835_gpio_write(Din, data);
    bcm2835_gpio_write(CLK, HIGH);
}

void Write_Max7219_byte(int data)
{
    //传输一个字节的数据
    // 从高位到低位判断是否为1 or 0，传输即可
    int i;
    for(i = 0 ; i < 8 ; i++){
        if(((data <<i) & 0x80) == 0x80){//判断对应bit位是否为1
            setBitData(HIGH);
        }
        else {
            setBitData(LOW);
        }
    }
}

void Write_Max7219(int addr, int data)
{
    //传输一次数据，即两个字节
    // 先传地址，再传数据
    bcm2835_gpio_write(CS, LOW);// 将CS信号拉低才能写入数据
    Write_Max7219_byte(addr);//传输地址
    Write_Max7219_byte(data);//传输数据
    bcm2835_gpio_write(CS, HIGH);//拉高CS，说明此次传输完成
}

void ShowDotMatrix()
{
    int i=0;
    for (i=0;i<8;i++){
        Write_Max7219(i+1,heart[i]);//将要显示的图案数据依次写入
    }
}
int main()
{
    gpio_Max7219_init();
    ShowDotMatrix();
    return 0;
}