#include <linux/kernel.h>    
#include <linux/module.h>  
#include <linux/device.h>   
#include <mach/platform.h>         
#include <linux/platform_device.h>  
#include <linux/types.h>    
#include <linux/fs.h>     
#include <linux/ioctl.h>    
#include <linux/cdev.h>    
#include <linux/delay.h>    
#include <linux/uaccess.h>  
#include <linux/init.h>   
#include <linux/gpio.h>  
#include <linux/string.h>
#include <linux/tty.h>
#include <linux/sched.h>
 
 
#define uchar unsigned char
#define uint unsigned int
 
#define DEVICE_NAME "Pi_Matrix"  
#define DRIVER_NAME "pi_matrix"  
 
//class声明内核模块驱动信息,是UDEV能够自动生成/dev下相应文件  
static dev_t pi_matrix_devno; //设备号 
static struct class *pi_matrix_class;  
static struct cdev pi_matrix_class_dev;  
  
struct gpio_chip *gpiochip;    
 
#define DecodeMode      0x09  //译码模式寄存器
#define Intensity       0x0a  //亮度寄存器
#define ScanLimit       0x0b  //扫描位数寄存器
#define ShutDown        0x0c  //低功耗模式寄存器
#define DisplayTest     0x0f  //显示测试寄存器
 
#define ShutdownMode    0x00  //低功耗方式
#define NormalOperation 0x01  //正常操作方式
#define ScanDigit       0x07  //扫描位数设置，显示8位数码管
#define DecodeDigit     0x00  //译码设置，8位均为非译码
#define IntensityGrade  0x0a  //亮度级别设置
#define TestMode        0x01  //显示测试模式
#define TextEnd         0x00  //显示测试结束，恢复正常工作模式
 
#define DIN 2
#define CS 3
#define CLK 4
 
uchar mybuffer[8] = {0x00,0x66,0xff,0xff,0xff,0x7e,0x3c,0x18};
uchar digits[][8]={
    {0x1c, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1c}, // 0
    {0x08, 0x18, 0x08, 0x08, 0x08, 0x08, 0x08, 0x1c}, // 1
    {0x1c, 0x22, 0x22, 0x04, 0x08, 0x10, 0x20, 0x3e}, // 2
    {0x1c, 0x22, 0x02, 0x0c, 0x02, 0x02, 0x22, 0x1c}, // 3
    {0x04, 0x0c, 0x14, 0x14, 0x24, 0x1e, 0x04, 0x04}, // 4
    {0x3e, 0x20, 0x20, 0x3c, 0x02, 0x02, 0x22, 0x1c}, // 5
    {0x1c, 0x22, 0x20, 0x3c, 0x22, 0x22, 0x22, 0x1c}, // 6
    {0x3e, 0x24, 0x04, 0x08, 0x08, 0x08, 0x08, 0x08}, // 7
    {0x1c, 0x22, 0x22, 0x1c, 0x22, 0x22, 0x22, 0x1c}, // 8
    {0x1c, 0x22, 0x22, 0x22, 0x1e, 0x02, 0x22, 0x1c}, // 9
};
 
void delay(uint t){
	uint i;
	while(t--)
		for (i = 0; i < 125; i++);
}
 
void sendChar(char ch){
	char i, tmp;
	for(i = 0; i < 8; i++){
		tmp = ch & 0x80;
		if(tmp) 
			gpiochip->set(gpiochip, DIN, 1);  
		else 
			gpiochip->set(gpiochip, DIN, 0); 
		ch = ch << 1;
		gpiochip->set(gpiochip, CLK, 1); 
		gpiochip->set(gpiochip, CLK, 0); 
	}
}
 
void writeWord(char addr, char num){
	gpiochip->set(gpiochip, CLK, 0); 
	gpiochip->set(gpiochip, CS, 1); 
	gpiochip->set(gpiochip, CS, 0); 
	sendChar(addr);
	sendChar(num);
	gpiochip->set(gpiochip, CS, 1); 
}
 
static int write_test(struct file *file, const char __user *buffer,
        
 
	size_t count, loff_t *ppos){
	char wbuf[100]={0};
	copy_from_user(wbuf,buffer,100);
	printk("%s\n",wbuf);
 
	gpiochip->set(gpiochip, CS, 1); 
	gpiochip->set(gpiochip, CS, 0); 
	gpiochip->set(gpiochip, CLK, 0); 
	return count; 
}
 
static int pi_matrix_write(struct file *file, const char __user *buffer,
	   
	size_t count, loff_t *ppos){
	char i;
	char ch[1]={'0'};
	copy_from_user(ch,buffer,1);
	printk("%c ok\n",ch[0]);
	
	switch(ch[0]){
	case '0':   
      		memcpy(mybuffer,digits[0],8);
      		break;  
     	case '1':  
           	memcpy(mybuffer,digits[1],8);
           	break;  
        case '2':  
           	memcpy(mybuffer,digits[2],8);
           	break;
        case '3':  
           	memcpy(mybuffer,digits[3],8);
           	break;
        case '4':  
           	memcpy(mybuffer,digits[4],8);
           	break;
        case '5':  
           	memcpy(mybuffer,digits[5],8);
           	break;
        case '6':  
           	memcpy(mybuffer,digits[6],8);
           	break;
        case '7':  
           	memcpy(mybuffer,digits[7],8);
           	break;
        case '8':  
           	memcpy(mybuffer,digits[8],8);
           	break;
        case '9':  
           	memcpy(mybuffer,digits[9],8);
           	break;
	default:break;
   	 } 
	
	for(i = 0; i < 8; i++){
		printk("%d %d\n",i, mybuffer[i]);
		writeWord(i + 1, mybuffer[i]);
	}
	return count;
}
 
void init(void){
	writeWord(0x09, 0x00);
	writeWord(0x0a, 0x03);
	writeWord(0x0b, 0x07);
	writeWord(0x0c, 0x01);
}
 
 
//内核调用后的open操作
int open_flag=0;  
static int pi_matrix_open(struct inode *inode, struct file *filp)    
{     
    printk("Open matrix ing!\n");    
    if(open_flag ==0){  
       open_flag =1;  
       printk("Open matrix success!\n");  
       return 0;  
    }  
    else{  
       printk("Matrix has opened!\n");       
    }  
    return 0;    
}  
 
//内核调用后的release操作
static int pi_matrix_release(struct inode *inode,struct file *file){  
     printk("Matrix has release!\n");  
     return 0;  
} 
 
//file_operations使系统的open,write等函数指针指向我们所写的led_open等函数,  
//这样系统才能够调用 
static struct file_operations pi_matrix_dev_fops = {    
  	 .owner          	= THIS_MODULE,    
  	 .write 		=  pi_matrix_write,
  	//.write			= write_test, 
	.open       		= pi_matrix_open,  
   	.release      	= pi_matrix_release,  
};   
 
static int is_right_chip(struct gpio_chip *chip, void *data)  
{  
  
    if (strcmp(data, chip->label) == 0)  
        return 1;  
    return 0;  
}  
//内核加载后的初始化函数.
static int __init pi_matrix_init(void)  
{  
   struct device *dev;  
   int major; //自动分配主设备号   
   major = alloc_chrdev_region(&pi_matrix_devno,0,1,DRIVER_NAME);  
 
   cdev_init(&pi_matrix_class_dev, &pi_matrix_dev_fops);  
   major = cdev_add(&pi_matrix_class_dev,pi_matrix_devno,1);  
  //注册class  
   pi_matrix_class = class_create(THIS_MODULE,DRIVER_NAME);  
     
   dev = device_create(pi_matrix_class, NULL, pi_matrix_devno, NULL, DRIVER_NAME);  
 
     //通过这个函数把内核的GPIO操作和BCM2708的GPIO操作关联起来;
   gpiochip = gpiochip_find("bcm2708_gpio", is_right_chip);  
 
   gpiochip->direction_output(gpiochip, DIN, 1);
   gpiochip->direction_output(gpiochip, CLK, 1);  
   gpiochip->direction_output(gpiochip, CS, 1);
   init();
   printk("pi matrix init ok!\n");  
   
   return 0;  
}  
//内核卸载后的销毁函数
void pi_matrix_exit(void)  
{  
   gpio_free(DIN);
   gpio_free(CS);  
   gpio_free(CLK);
   device_destroy(pi_matrix_class,pi_matrix_devno);  
   class_destroy(pi_matrix_class);  
   cdev_del(&pi_matrix_class_dev);  
   unregister_chrdev_region(pi_matrix_devno, 1);  
   printk("pi matrix exit ok!\n");  
     
}  
  
module_init(pi_matrix_init);  
module_exit(pi_matrix_exit);  
  
MODULE_DESCRIPTION("Rasp Matrix Driver");  
MODULE_AUTHOR("HSQ");  
MODULE_LICENSE("GPL");  
 