#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "bmp.h"
#include <immintrin.h>
#include <stddef.h>

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

void yuv2Gray_vec(myBmpFile *Bgray,myBmpFile *bmpImg)
{
	Bgray->BFH=bmpImg->BFH;
	Bgray->BIH=bmpImg->BIH;
	
	int i,j;
	if(bmpImg->BIH.biBitCount == 24){//24位图像处理 
		Bgray->Plalette=NULL;
		Bgray->imageData=(unsigned char *)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		long size = bmpImg->BIH.biSizeImage;
		__m512i idx;
        const unsigned char* src = bmpImg->imageData, *dst = Bgray->imageData;
    	idx = _mm512_set_epi8(63, 60,60,60, 57,57,57, 54,54,54, 51,51,51, 48,48,48, 
                              45,45,45, 42,42,42, 39,39,39, 36,36,36, 33,33,33, 
                              30,30,30, 27,27,27, 24,24,24, 21,21,21, 18,18,18, 
                              15,15,15, 12,12,12, 9,9,9, 6,6,6, 3,3,3, 0,0,0);
		for(i=0; i<size-63; i+=63){
            __m512i msrc;
            msrc = _mm512_loadu_epi8((void*)(src+i));
            __m512i mdst;
            mdst= _mm512_permutexvar_epi8(idx, msrc);
            _mm512_storeu_epi8((void*)(dst+i), mdst);
		}
        for(;i<size;i+=3){
            Bgray->imageData[i] = bmpImg->imageData[i];
			Bgray->imageData[i+1] = bmpImg->imageData[i];
			Bgray->imageData[i+2] = bmpImg->imageData[i];
        }
	}
}

void yuv2Gray_old(myBmpFile *Bgray,myBmpFile *bmpImg)
{
	Bgray->BFH=bmpImg->BFH;
	Bgray->BIH=bmpImg->BIH;
	
	int i,j;
    if(bmpImg->BIH.biBitCount == 24){//24位图像处理 
		Bgray->Plalette=NULL;
		Bgray->imageData=(unsigned char *)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		long size = bmpImg->BIH.biSizeImage;

		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;//计算一行字节数
		
		for(i=0;i<height-1;i++){
			for(j=0;j<width-1;j++){
				// if((Bgray->imageData[i*width_+j*3]=bmpImg->imageData[i*width_+j*3])>255)
					// Bgray->imageData[i*width_+j*3]=(unsigned char)255;
				Bgray->imageData[i*width*3+j*3]  =bmpImg->imageData[i*width*3+j*3];
				Bgray->imageData[i*width*3+1+j*3]=bmpImg->imageData[i*width*3+j*3];
				Bgray->imageData[i*width*3+2+j*3]=bmpImg->imageData[i*width*3+j*3];
			}
		}	
	}
}



void yuv2Gray_update(myBmpFile *Bgray,myBmpFile *bmpImg)
{
	Bgray->BFH=bmpImg->BFH;
	Bgray->BIH=bmpImg->BIH;
	
	int i,j;
	if(bmpImg->BIH.biBitCount == 24){//24位图像处理 
		Bgray->Plalette=NULL;
		Bgray->imageData=(unsigned char *)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		long size = bmpImg->BIH.biSizeImage;
		for(i=0;i<size;i+=3){
			Bgray->imageData[i] = bmpImg->imageData[i];
			Bgray->imageData[i+1] = bmpImg->imageData[i];
			Bgray->imageData[i+2] = bmpImg->imageData[i];
		}

		// memcpy(Bgray->imageData,bmpImg->imageData,bmpImg->BIH.biSizeImage);
		// for(i=0;i<size;i+=3){
		// 	Bgray->imageData[i]   = Bgray->imageData[i];
		// 	Bgray->imageData[i+1] = Bgray->imageData[i];
		// 	Bgray->imageData[i+2] = Bgray->imageData[i];
		// }
	}
}

