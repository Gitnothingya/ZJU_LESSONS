#include<stdio.h>
#include<stdlib.h>
#include"bmp.h"

const char* fileName0 = "sample//1.bmp";//ԭͼ 
const char* fileName1 = "result//test_g.bmp";//�Ҷ�ͼ 
const char* fileName2 = "result//test_b.bmp";//��ֵͼ 
const char* fileName3 = "result//test_d.bmp";//���Ͳ��� 
const char* fileName4 = "result//test_e.bmp";//��ʴ���� 
const char* fileName5 = "result//test_o.bmp";//������ 
const char* fileName6 = "result//test_c.bmp";//�ղ��� 
int main()
{
	int flag;
	myBmpFile bmp,bmp_d,bmp_e,bmp_o,bmp_c;
	ReadBmp(&bmp,fileName0);
			
	cor2gray(&bmp);
	flag=WriteBmp(fileName1,&bmp); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	unsigned char T=get_Thresh(&bmp);
	gray2bin(T,&bmp);
	flag=WriteBmp(fileName2,&bmp);
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	delation(&bmp_d,&bmp);
	flag = WriteBmp(fileName3,&bmp_d);  
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	erosion(&bmp_e,&bmp);
	flag=WriteBmp(fileName4,&bmp_e);  
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	opening(&bmp_o,&bmp);
	flag=WriteBmp(fileName5,&bmp_o);  
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	closing(&bmp_c,&bmp);
	flag=WriteBmp(fileName6,&bmp_c);  
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	return 0; 
}





