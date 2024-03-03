#include <iostream>
#include <stdio.h>
#include "bmp.h"
#include<chrono>
#include <ratio>

using namespace std;
using namespace std::chrono;

const char* fileName1 = "sample/lena2.bmp";
const char* fileName2 = "result/gray_vec.bmp";
const char* fileName3 = "result/gray_update.bmp";
const char* fileName4 = "result/gray_old.bmp";

#define times 100 //重复执行次数，可修改数值

int main()
{
    int flag;
	int i;

    myBmpFile bmp;
	ReadBmp(&bmp,fileName1);
    myBmpFile bmp_gray;

    typedef std::chrono::high_resolution_clock Clock;

    auto t3 = Clock::now();//计时开始
	for(i=0;i<times;i++){	
		yuv2Gray_old(&bmp_gray,&bmp);
	}
    auto t4 = Clock::now();//计时结束
    std::cout <<(double)std::chrono::duration_cast<std::chrono::nanoseconds>(t4 - t3).count()/(double)1000000000 << "\n";
    flag = WriteBmp(fileName3,&bmp_gray);
    if(flag)  cout<< "gray_old ok..."<<endl; 

    auto t5 = Clock::now();//计时开始
	for(i=0;i<times;i++){	
		yuv2Gray_update(&bmp_gray,&bmp);
	}
    auto t6 = Clock::now();//计时结束
    std::cout <<(double)std::chrono::duration_cast<std::chrono::nanoseconds>(t6 - t5).count()/(double)1000000000 << "\n";
    flag = WriteBmp(fileName4,&bmp_gray);
    if(flag)  cout<< "gray_update ok..."<<endl; 

    auto t1 = Clock::now();//计时开始
	for(i=0;i<times;i++){	
		yuv2Gray_vec(&bmp_gray,&bmp);
	}
    auto t2 = Clock::now();//计时结束
    std::cout <<(double)std::chrono::duration_cast<std::chrono::nanoseconds>(t2 - t1).count()/(double)1000000000 << "\n";
    flag = WriteBmp(fileName2,&bmp_gray);
    if(flag)  cout<< "gray_vec ok..." << endl;



	return 0; 
}