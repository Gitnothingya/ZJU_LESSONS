#include <stdio.h>
#include<sys/time.h>

int main()
{
    int local=10;
    int local2 = 8;
    int multi = 2;
    int res;

int i=0;
 struct timeval time_now = {0} , time_end = {0};
    long time_sec = 0, time_sec_end;//秒
    long time_mil = 0, time_mil_end;//1毫秒 = 1秒/1000 
    long time_mic = 0, time_mic_end;//1微秒 = 1毫秒/1000

    gettimeofday(&time_now,NULL);
    for(i=0;i<1000000;i++){
        __asm__ volatile(
            "mov ebx, (%1) \n\t"
            "mov ecx, (%2) \n\t"
            "mov edx, (%3) \n\t"
            "lea eax, %[ebx + ecx*edx+4] \n\t"
            "mov (%[res]), eax"
            :[res]"=m"(res)
            :[local]"m"(local),[local2]"m"(local2),[multi]"m"(multi)
            :"eax","ebx","ecx","edx"
        );
    }
    
    gettimeofday(&time_end,NULL);
    time_mic = time_now.tv_sec*1000*1000 + time_now.tv_usec;
    time_mic_end = time_end.tv_sec*1000*1000 + time_end.tv_usec;
    printf("%d  microsecond %ld\n",res,time_mic_end-time_mic);

    gettimeofday(&time_now,NULL);
    for(i=0;i<1000000;i++){
        res = local + local2*multi+4;
    }
    
    gettimeofday(&time_end,NULL);
    time_mic = time_now.tv_sec*1000*1000 + time_now.tv_usec;
    time_mic_end = time_end.tv_sec*1000*1000 + time_end.tv_usec;
    printf("%d  microsecond %ld\n",res,time_mic_end-time_mic);




}