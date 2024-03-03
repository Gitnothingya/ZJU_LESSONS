/*======================================================================
* Copyright (C) 2018 Sangfor Ltd. All rights reserved.
* Programmer :Linyuanpeng
* Date       :2018/02/05
* 获取秒级，毫秒级和纳秒级的当前时间。
*========================================================================*/

#include<stdio.h>
#include<sys/time.h>

int main()
{
    struct timeval time_now = {0} , time_end = {0};
    long time_sec = 0, time_sec_end;//秒
    long time_mil = 0, time_mil_end;//1毫秒 = 1秒/1000 
    long time_mic = 0, time_mic_end;//1微秒 = 1毫秒/1000

    gettimeofday(&time_now,NULL);
    
    int i = 0;
    for(i = 0; i<100000;i++){
        int a;
        a = a+1;
    }

    gettimeofday(&time_end,NULL);

    time_sec = time_now.tv_sec;
    time_mil = time_sec * 1000 + time_now.tv_usec/1000;
    time_mic = time_now.tv_sec*1000*1000 + time_now.tv_usec;
    time_sec_end = time_end.tv_sec;
    time_mil_end = time_sec * 1000 + time_end.tv_usec/1000;
    time_mic_end = time_end.tv_sec*1000*1000 + time_end.tv_usec;

    printf("second %ld\n",time_sec);
    printf("millisecond %ld\n",time_mil);
    printf("microsecond %ld\n",time_mic);

    printf("second %ld\n",time_sec_end);
    printf("millisecond %ld\n",time_mil_end);
    printf("microsecond %ld\n",time_mic_end);

    printf("second %ld\n",time_sec_end-time_sec);
    printf("millisecond %ld\n",time_mil_end-time_mil);
    printf("microsecond %ld\n",time_mic_end-time_mic);


  return 0;
}