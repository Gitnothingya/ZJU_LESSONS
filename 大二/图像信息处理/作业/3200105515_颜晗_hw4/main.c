#include<stdio.h>
#include<stdlib.h>
#include"bmp.h"
#include<math.h>
const char* fileName0 = "sample//4.bmp";//Ô­Í¼ 
const char* fileName1 = "result//test_g.bmp";//»Ò¶ÈÍ¼ 
const char* fileName2 = "result//test_T.bmp";//Æ½ÒÆ 
const char* fileName3 = "result//test_M.bmp";//¾µÏñ
const char* fileName4 = "result//test_Sc.bmp";//·ÅËõ 
const char* fileName5 = "result//test_R.bmp";//Ðý×ª 
const char* fileName6 = "result//test_Sh.bmp";//´íÇÐ
 
const char* fileName7 = "result//test_Sh2.bmp";//¶þ´Î´íÇÐ 

int main()
{
	int flag;
	myBmpFile bmp,bmp_T,bmp_M,bmp_Sc,bmp_R,bmp_Sh,bmp_Sh2;
	ReadBmp(&bmp,fileName0); 		
			
	cor2gray(&bmp);
	flag=WriteBmp(fileName1,&bmp);
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
	
	
	Translation(&bmp,&bmp_T,0,500);
	flag=WriteBmp(fileName2,&bmp_T); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	Mirror(&bmp,&bmp_M,1);
	flag=WriteBmp(fileName3,&bmp_M); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
	Scale(&bmp,&bmp_Sc,4,4);
	flag=WriteBmp(fileName4,&bmp_Sc); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	Rotation(&bmp,&bmp_R,210);
	flag=WriteBmp(fileName5,&bmp_R); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	Shear(&bmp,&bmp_Sh,1,0.6);
	flag=WriteBmp(fileName6,&bmp_Sh); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");
		
		
		
		
		Shear(&bmp_Sh,&bmp_Sh2,0,-0.3);
	flag=WriteBmp(fileName7,&bmp_Sh2); 
	if(flag)  
		printf("save  ok...\n");  
	else
		printf("save failure...\n");

	return 0; 
}





