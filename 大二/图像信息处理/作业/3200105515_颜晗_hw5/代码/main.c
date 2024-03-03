#include<stdio.h>
#include<stdlib.h>
#include"bmp.h"
#include<math.h>
const char* fileName0 = "sample//1.bmp";//原图 
const char* fileName1 = "sample//2.bmp";//原图 
const char* fileName2 = "result//test_g1.bmp";//灰度图 
const char* fileName3 = "result//test_g2.bmp";//灰度图 
const char* fileName4 = "result//test_m.bmp";//对数  
const char* fileName7 = "result//test_m2.bmp";//对数  
const char* fileName5 = "result//test_l1.bmp";//对数 
const char* fileName6 = "result//test_l2.bmp";//对数 
int main()
{
	int flag;
	myBmpFile bmp1,bmp2,bmp_l1,bmp_l2,bmp_m,bmp_m2;
	
	ReadBmp(&bmp1,fileName0);
	cor2gray(&bmp1);
	flag=WriteBmp(fileName2,&bmp1); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	ReadBmp(&bmp2,fileName1);
	cor2gray(&bmp2);
	flag=WriteBmp(fileName3,&bmp2); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	mean_filter(&bmp_m,&bmp2);
	flag=WriteBmp(fileName4,&bmp_m); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	mean_filter(&bmp_m2,&bmp_m);
	flag=WriteBmp(fileName7,&bmp_m2); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	laplacian(&bmp_l1,&bmp1,8);
	flag=WriteBmp(fileName5,&bmp_l1); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	laplacian(&bmp_l2,&bmp1,16);
	flag=WriteBmp(fileName6,&bmp_l2); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
}





