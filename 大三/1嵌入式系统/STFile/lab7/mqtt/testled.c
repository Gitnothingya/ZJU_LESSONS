#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/select.h>
#include <sys/time.h>
#include <errno.h>
#include <string.h>
#define BUFSIZE 1
int main(void)
{
    int fd,ret;
    char ch[1];
    char stdch[100];
 
    fd = open("/dev/led_matrix",O_RDWR | O_NONBLOCK);//增加写权限
    if(fd < 0)
        {
            printf("Error: open /dev/led_matrix error,%d !\n",fd);
            return(1);
        }
    
    int stdinfd;
    stdinfd = open("/dev/tty",O_RDONLY | O_NONBLOCK);//增加写权限
    if(stdinfd < 0)
        {
            printf("Error: open /dev/tty error,%d !\n",stdinfd);
            return(1);
        }
    
    printf("open ok!\n");
    while(1){//循环接受字符
        //ch[0] = getchar();
        //ret = write(fd, ch, 1);
        
        
         //scanf("%s",stdch);
         read(stdinfd, stdch, 100);
        if(strlen(stdch) > 0){
               write(fd, stdch, strlen(stdch));
	       memset(stdch, 0x00, 100);
        }
    }
   return 0;
 
}
