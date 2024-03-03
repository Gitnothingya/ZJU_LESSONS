#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "bmp.h"

void ReadBmp(myBmpFile *bmpImg,const char* path)
{
	FILE *pFile; 
	myBitMapFileHeader bmpFileHeader;  
    myBitMapInfoHeader bmpInfoHeader; 
	myRgbQuad* quad=NULL;
	unsigned char *bmpData;
	//基本结构体的声明，作为中间变量用于转移信息。
	
	pFile = fopen(path, "rb"); 
	if(!pFile) perror("Failed to open file");
	

	fread(&bmpFileHeader.bfType,2, 1, pFile); 
	fread(&bmpFileHeader.bfSize,4, 1, pFile); 
	fread(&bmpFileHeader.bfReserved1,2, 1, pFile); 
	fread(&bmpFileHeader.bfReserved2,2, 1, pFile); 
	fread(&bmpFileHeader.bfOffBits,4, 1, pFile); 
	bmpImg->BFH=bmpFileHeader;//读取位图文件头
	

	fread(&bmpInfoHeader, sizeof(myBitMapInfoHeader), 1, pFile);
	bmpImg->BIH=bmpInfoHeader;//读取位图信息头
	
	/*由于8位和24位存在有无调色板以及像素颜色表示方法的区别，故所有函数均将它们分开处理*/
	if(bmpInfoHeader.biBitCount==8){
		fseek(pFile,bmpInfoHeader.biSize-40,SEEK_CUR);
		//由于寻找的部分图信息头结构体大小不一定为40，故需要重定位文件指针寻找所需信息
		
		quad=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		fread(quad,sizeof(myRgbQuad)*256,1,pFile);
		memcpy(bmpImg->Plalette,quad,sizeof(myRgbQuad)*256);
		/*转移调色板信息*/
		
		bmpData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);      
		fread(bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage,1,pFile);
		memcpy(bmpImg->imageData,bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		
		bmpImg->BFH.bfSize=54+bmpImg->BIH.biSizeImage+sizeof(myRgbQuad)*256;
	}   
	else if(bmpInfoHeader.biBitCount==24){//24位图的处理
		fseek(pFile,bmpInfoHeader.biSize-40,SEEK_CUR); //重定位
		bmpImg->BIH.biSize=40;
		bmpImg->Plalette = quad;//调色板指针为空。
		
		bmpData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);           
		fread(bmpData,bmpInfoHeader.biSizeImage,1,pFile);
		memcpy(bmpImg->imageData,bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		/*转移像素信息*/
		bmpImg->BFH.bfSize=54+bmpImg->BIH.biSizeImage;
	}
	fclose(pFile);
} 

int WriteBmp(const char* path, myBmpFile *bmpImg)
{
	FILE *pFile; 
	myBitMapFileHeader bmpFileHeader;  
	myBitMapInfoHeader bmpInfoHeader; 
	myRgbQuad* quad;
	unsigned char *bmpData;
	//转移信息的中间变量
	 
	pFile = fopen(path, "wb"); 
	if(!pFile) return 0;
	bmpFileHeader=bmpImg->BFH;
	if(bmpInfoHeader.biBitCount==24)bmpFileHeader.bfOffBits=54;/////////////////////////////

	
	fwrite(&bmpFileHeader.bfType,2, 1, pFile); 
	fwrite(&bmpFileHeader.bfSize,4, 1, pFile); 
	fwrite(&bmpFileHeader.bfReserved1,2, 1, pFile); 
	fwrite(&bmpFileHeader.bfReserved2,2, 1, pFile); 
	fwrite(&bmpFileHeader.bfOffBits,4, 1, pFile);

	bmpInfoHeader=bmpImg->BIH;
	fwrite(&bmpInfoHeader, sizeof(bmpInfoHeader), 1, pFile);

        
	if(bmpImg->Plalette) {
		quad=bmpImg->Plalette;
		fwrite(quad, sizeof(myRgbQuad)*256, 1, pFile);
	}
	bmpData=(unsigned char *)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);

	memcpy(bmpData,bmpImg->imageData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
	fwrite(bmpData,bmpInfoHeader.biSizeImage, 1, pFile);	
	fclose(pFile);
	return 1;
}


void rgb2yuv(myBmpFile *bmpImg)
{
	int i,j;
	unsigned char r,g,b;
	
	if(bmpImg->Plalette){//8位图像修改调色板信息
		for(i=0;i<256;i++)
		{
			r=bmpImg->Plalette[i].rgbRed;
			g=bmpImg->Plalette[i].rgbGreen;
			b=bmpImg->Plalette[i].rgbBlue;
			//存储分量信息，便于计算，精简表达式
			if((bmpImg->Plalette[i].rgbRed=(unsigned char)(0.299*r+0.587*g+0.114*b))>255)
				bmpImg->Plalette[i].rgbRed=(unsigned char)255;
			bmpImg->Plalette[i].rgbGreen=(char)(-0.147*r-0.289*g+0.435*b);
			bmpImg->Plalette[i].rgbBlue=(char)(0.615*r-0.515*g-0.100*b);
			//三个分量分别计算
		}
	}
	else{//24位图像需要直接在图像像素信息处修改，其余与8位同
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;//计算一行字节数
		
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				r=bmpImg->imageData[i*width_+j*3];
				g=bmpImg->imageData[i*width_+1+j*3];
				b=bmpImg->imageData[i*width_+2+j*3];
				if((bmpImg->imageData[i*width_+j*3]=(unsigned char)(0.299*r+0.587*g+0.114*b))>255)
					bmpImg->imageData[i*width_+j*3]=(unsigned char)255;
				bmpImg->imageData[i*width_+1+j*3]=(char)(-0.147*r-0.289*g+0.435*b);//printf("%d ",bmpImg->imageData[i*width_+1+j*3]);
				bmpImg->imageData[i*width_+2+j*3]=( char)(0.615*r-0.515*g-0.100*b);
			}
		}	
	}
} 


void yuv2Gray(myBmpFile *Bgray,myBmpFile *bmpImg)
{
	Bgray->BFH=bmpImg->BFH;
	Bgray->BIH=bmpImg->BIH;
	
	int i,j;
	
	if(bmpImg->Plalette){//8位图处理，依旧只需要调整调色板
		Bgray->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		Bgray->imageData=(unsigned char *)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		for(i=0;i<256;i++)
		{
			if((Bgray->Plalette[i].rgbRed=bmpImg->Plalette[i].rgbRed)>255)
				Bgray->Plalette[i].rgbRed=(unsigned char)255;
			Bgray->Plalette[i].rgbGreen=bmpImg->Plalette[i].rgbRed;
			Bgray->Plalette[i].rgbBlue=bmpImg->Plalette[i].rgbRed;
			//分量全部赋值y
		}
		memcpy(Bgray->imageData,bmpImg->imageData,sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
	}
	else{//24位图像处理 
		Bgray->Plalette=NULL;
		Bgray->imageData=(unsigned char *)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;//计算一行字节数
		
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				if((Bgray->imageData[i*width_+j*3]=bmpImg->imageData[i*width_+j*3])>255)
					Bgray->imageData[i*width_+j*3]=(unsigned char)255;
				Bgray->imageData[i*width_+1+j*3]=bmpImg->imageData[i*width_+j*3];
				Bgray->imageData[i*width_+2+j*3]=bmpImg->imageData[i*width_+j*3];
			}
		}	
	}
}

void Rearrange(myBmpFile *Bgray)
{
	int i,j;
	unsigned char max,min;
	
	if(Bgray->Plalette){
		max=0;min=Bgray->Plalette[0].rgbRed;
		for(i=0;i<256;i++){
			if(Bgray->Plalette[i].rgbRed>max)
				max=Bgray->Plalette[i].rgbRed;
			if(Bgray->Plalette[i].rgbRed<min)
				min=Bgray->Plalette[i].rgbRed;
		}//寻找最大值与最小值
		unsigned char scope=max-min;//所处区间长度
		
		for(i=0;i<256;i++)
		{
			Bgray->Plalette[i].rgbRed=(unsigned char)(255*(Bgray->Plalette[i].rgbRed-min)/scope);
			Bgray->Plalette[i].rgbGreen=Bgray->Plalette[i].rgbRed;
			Bgray->Plalette[i].rgbBlue=Bgray->Plalette[i].rgbRed;
		}
		
	}
	else{
		long height=Bgray->BIH.biHeight;
		long width=Bgray->BIH.biWidth;
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;
		
		max=0;min=Bgray->imageData[0];
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				if(Bgray->imageData[i*width_+j*3]>max)
					max=Bgray->imageData[i*width_+j*3];
				if(Bgray->imageData[i*width_+j*3]<min)
					min=Bgray->imageData[i*width_+j*3];
			}
		}
		unsigned char scope=max-min;
		
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				Bgray->imageData[i*width_+j*3]=(unsigned char)(255*(Bgray->imageData[i*width_+j*3]-min)/scope);
				Bgray->imageData[i*width_+1+j*3]=Bgray->imageData[i*width_+j*3];
				Bgray->imageData[i*width_+2+j*3]=Bgray->imageData[i*width_+j*3];
			}
		}
		
	}
	
}

void yuv2rgb(myBmpFile *bmpImg)
{
	int i,j;
	unsigned char y,u,v;
	
	if(bmpImg->Plalette){
		for(i=0;i<256;i++)
		{
			y=bmpImg->Plalette[i].rgbRed;
			u=bmpImg->Plalette[i].rgbGreen;
			v=bmpImg->Plalette[i].rgbBlue;

			if((bmpImg->Plalette[i].rgbRed=(unsigned char)(1.0000*(y)+1.1398*(char)v))>255)
				bmpImg->Plalette[i].rgbRed=(unsigned char)255;
			bmpImg->Plalette[i].rgbGreen=(unsigned char)(0.9996*(y)-0.3954*(char)u-0.5805*(char)v);
			bmpImg->Plalette[i].rgbBlue=(unsigned char)(1.0020*(y)+2.0361*(char)u-0.0005*(char)v);
		}
	}
	else{
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;
		
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				y=bmpImg->imageData[i*width_+j*3];
				u=bmpImg->imageData[i*width_+1+j*3];
				v=bmpImg->imageData[i*width_+2+j*3];
				if((bmpImg->imageData[i*width_+j*3]=(unsigned char)(1.0000*(y+20)+1.1398*(char)v))>255)
					bmpImg->imageData[i*width_+j*3]=(unsigned char)255;
				bmpImg->imageData[i*width_+1+j*3]=(unsigned char)(0.9996*(y+20)-0.3954*(char)u-0.5805*(char)v);
				bmpImg->imageData[i*width_+2+j*3]=(unsigned char)(1.0020*(y+20)+2.0361*(char)u-0.0005*(char)v);
			}
		}	
	}
}














