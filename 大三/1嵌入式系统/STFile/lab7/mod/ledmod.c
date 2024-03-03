#include <linux/kernel.h>    
#include <linux/module.h>  
#include <linux/device.h>          

#include <linux/types.h>    
#include <linux/fs.h>     
// #include <linux/ioctl.h>    
#include <linux/cdev.h>    
#include <linux/delay.h>    
#include <linux/uaccess.h>  
#include <linux/init.h>   
#include <linux/gpio.h>  
#include <linux/string.h>
#include <stdlib.h>
#include <linux/time.h>
// #include <linux/tty.h>
// #include <linux/sched.h>


#define DEVICE_NAME "led_matrix"  
 
//class声明内核模块驱动信息,使UDEV能够自动生成/dev下相应文件  
static dev_t led_matrix_devno; //设备号 
static struct class *led_matrix_class;     // cdev所需结构
static struct cdev led_matrix_class_dev;  // cdev用于在系统中注册字符设备
 
// 对应的引脚号
#define Din 4
#define CS 3
#define CLK 2

#define HIGH 1
#define LOW  0
 
int matrix[8] = {0x99,0x66,0x5a,0xa5,0xa5,0x5a,0x66,0x99};
int digits[][8]={
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


static struct timer_list timer = NULL;  // 定时器指针

void setBitData(int data);
void Write_Max7219_byte(int data);
void Write_Max7219(int addr, int data);
void ShowLEDMatrix(int ch[]);
void init_GPIO_Max7219(void);

int checkQueue();
int addToQueue(char one);
char PopFront();
void HandleTimer();
typedef struct charq* charqPtr;
struct charq {
    char ch;
    struct charqueue* next;
};
charqPtr ToShow = NULL;
charqPtr Tail = NULL;
int checkQueue()
{
    return ToShow != NULL;
}
int addToQueue(char one)
{
    charqPtr tmp = (charqPtr)malloc(sizeof(charq));
    tmp->ch = one;
    tmp->next = NULL;
    if(ToShow == NULL){
        ToShow = tmp;
        Tail = tmp;
    }
    else {
        Tail->next = tmp;
        Tail = Tail->next;
    }
    return 0;
}
char PopFront()
{
    charqPtr tmp = ToShow;
    char tmpch = ToShow->ch;

    if(ToShow->next != NULL){
        ToShow = ToShow->next;
    }
    else {
        ToShow = NULL:
        Tail = NULL;
    }
    
    free(tmp);
    return tmpch;
}
void HandleTimer()
{
    
}




void setBitData(int data)
{
    gpio_set_value(CLK, LOW);
    gpio_set_value(Din, data);
    gpio_set_value(CLK, HIGH);
}
void Write_Max7219_byte(int data)
{
    int i;
    for(i = 0 ; i < 8 ; i++){
        if(((data <<i) & 0x80) == 0x80){
            setBitData(HIGH);
        }
        else {
            setBitData(LOW);
        }
        
    }
}
void Write_Max7219(int addr, int data)
{
    gpio_set_value(CS,LOW);
    Write_Max7219_byte(addr);
    Write_Max7219_byte(data);
    gpio_set_value(CS,HIGH);
}

void ShowLEDMatrix(int ch[])
{
    int i=0;
    for (i=0;i<8;i++){
        Write_Max7219(i+1,ch[i]);
    }
}
void init_GPIO_Max7219(void)
{
    int ret ;
    ret = gpio_request(Din, "Din");
    if (ret) {
        printk(KERN_ERR "module: Failed to request GPIO %d, error %d\n", Din, ret);
        return ;
    }
    ret = gpio_request(CS, "CS");
    if (ret) {
        printk(KERN_ERR "module: Failed to request GPIO %d, error %d\n", CS, ret);
        return ;
    }
    ret = gpio_request(CLK, "Din");
    if (ret) {
        printk(KERN_ERR "module: Failed to request GPIO %d, error %d\n", CLK, ret);
        return ;
    }
    gpio_direction_output(Din, 1);
    gpio_direction_output(CS, 1);
    gpio_direction_output(CLK, 1);

    Write_Max7219(0x09, 0x00); // 关闭译码模式
    Write_Max7219(0x0a, 0x00); // 设置led亮度 3 ,15最大
    Write_Max7219(0x0b, 0x07); // 设置扫描行数
    Write_Max7219(0x0c, 0x01); // 设置正常模式
    Write_Max7219(0x0f, 0x00); // 设置正常模式

    ShowLEDMatrix(matrix);

}
static int  dev_write(struct file *file, const char __user *buffer, size_t count, loff_t *ppos)
{
    
    char ch[100]={0};
    copy_from_user(ch,buffer,count);
    printk("get %s from user ,count %d ok\n",ch,count);
    int i;
    for(int i=0;i<count;i++){
        if ((ch[i] >= '0' && ch[i]<='9') || (ch[i] >= 'a' && ch[i]<='z') || (ch[i] >= 'A' && ch[i]<='Z')){
            // ShowLEDMatrix(digits[(ch[i]-'0')]);
            addToQueue(ch[i]);
        }
    }
    return count;
}

//内核调用后的open操作
static int dev_open(struct inode *inode, struct file *filp)
{
    static int open_flag = 0;
    printk("Open LED matrix ......!\n");    
    if(open_flag ==0){  
       open_flag =1;  
       printk("Open LED matrix success!\n");  
       return 0;  
    }  
    else{  
       printk("LED Matrix has opened!\n");       
    }  
    return 0;
}

//内核调用后的release操作
static int dev_release(struct inode *inode,struct file *file){  
     printk("LED Matrix has release!\n");  
     return 0;  
} 
 
//file_operations使系统的open,write等函数指针指向我们所写的dev_open等函数,  
//这样系统才能够调用 
static struct file_operations led_matrix_dev_fops = {    
    .owner      =   THIS_MODULE,    
    .write      =   dev_write,
    .open       =   dev_open,  
   	.release    =   dev_release,  
};   

//内核加载后的初始化函数.
static int __init led_matrix_init(void)  
{  
    struct device *dev;  
    int major; //自动分配主设备号   
    major = alloc_chrdev_region(&led_matrix_devno,0,1,DEVICE_NAME);  
    
    cdev_init(&led_matrix_class_dev, &led_matrix_dev_fops);  
    major = cdev_add(&led_matrix_class_dev,led_matrix_devno,1);  
     //注册class  
    led_matrix_class = class_create(THIS_MODULE,DEVICE_NAME);  

    dev = device_create(led_matrix_class, NULL, led_matrix_devno, NULL, DEVICE_NAME);  
 
    //通过这个函数把内核的GPIO操作和BCM2708的GPIO操作关联起来;
    // gpiochip = gpiochip_find("pinctrl_bcm2835", is_right_chip);  
    
    // gpiochip->direction_output(gpiochip, DIN, 1);
    // gpiochip->direction_output(gpiochip, CLK, 1);  
    // gpiochip->direction_output(gpiochip, CS, 1);
    // init();
    init_GPIO_Max7219();

    init_timer(&timer);                  /* 初始化定时器 */ 
    timer.function = HandleTimer;        /* 绑定定时时间到后的执行函数 */
    timer.expires = jiffies + HZ;        /* 定时的时间点，HZ是jiffies时钟的周期，当前时间的1s之后 */
    timer.data = 0;                      /* function_handle的参数*/
    add_timer(&timer);                   /* 添加并启动定时器 */

    printk("led matrix module init ok!\n");  
   
   return 0;  
}  
//内核卸载后的销毁函数
void led_matrix_exit(void)  
{  
    gpio_free(Din);
    gpio_free(CS);  
    gpio_free(CLK);
    device_destroy(led_matrix_class,led_matrix_devno);  
    class_destroy(led_matrix_class);  
    cdev_del(&led_matrix_class_dev);  
    unregister_chrdev_region(led_matrix_devno, 1);  
    printk("led matrix exit ok!\n");  
     
}  
  
module_init(led_matrix_init);  
module_exit(led_matrix_exit);  
  
MODULE_DESCRIPTION("Rasp Matrix Driver");   
MODULE_LICENSE("GPL");  
 