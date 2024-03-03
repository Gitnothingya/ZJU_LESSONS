#include<stdio.h>
#include<stdlib.h>
#include"bmp.h"

const char* fileName1 = "sample//lena.bmp";
const char* fileName2 = "result//gray.bmp";
const char* fileName3 = "result//yuv2rgb.bmp";
int main()
{
	int flag;
	myBmpFile bmp;
	ReadBmp(&bmp,fileName1);

	rgb2yuv(&bmp);

	myBmpFile bmp_gray;
	yuv2Gray(&bmp_gray,&bmp);
	Rearrange(&bmp_gray);
	flag = WriteBmp(fileName2,&bmp_gray);
	if(flag)  
		printf("bmp(gray) ok...\n");  
	else
		printf("save failure...\n");
	
	
	yuv2rgb(&bmp);
	flag = WriteBmp(fileName3,&bmp);  
	if(flag)  
		printf("bmp(yuv->rgb) ok...\n");  
	else
		printf("save failure...\n");

	return 0; 
}





