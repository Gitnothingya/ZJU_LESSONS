#include<stdio.h>
#include<stdlib.h>
#include"bmp.h"
#include<math.h>
const char* fileName0 = "sample//6.bmp";//ԭͼ 
const char* fileName1 = "result//test_g.bmp";//�Ҷ�ͼ 
const char* fileName2 = "result//test_log.bmp";//���� 
const char* fileName3 = "result//test_hist.bmp";//��ʴ���� 

int main()
{
	int flag;
	myBmpFile bmp,bmp_log,bmp_hist;
	ReadBmp(&bmp,fileName0);
			
	cor2gray(&bmp);
	flag=WriteBmp(fileName1,&bmp); 

	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	log_visi(&bmp_log,&bmp);
	flag=WriteBmp(fileName2,&bmp_log); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	histeq(&bmp_hist,&bmp);
	flag=WriteBmp(fileName3,&bmp_hist); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	return 0; 
}





