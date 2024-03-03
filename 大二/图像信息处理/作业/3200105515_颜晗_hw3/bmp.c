#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
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



void cor2gray(myBmpFile* bmpImg)
{
	int i,j,k;
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
			bmpImg->Plalette[i].rgbGreen=bmpImg->Plalette[i].rgbRed;
			bmpImg->Plalette[i].rgbBlue=bmpImg->Plalette[i].rgbRed;
		}
		myRgbQuad *quad=bmpImg->Plalette;
		//原彩色调色板转换为灰度调色板，虽然调色板需要换，
		//但是还需要原调色板来转换像素点数据，所以需要一个指针 
		
		 
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		for(i=0;i<256;i++){
			bmpImg->Plalette[i].rgbRed=i;
			bmpImg->Plalette[i].rgbGreen=i;
			bmpImg->Plalette[i].rgbBlue=i;/////
			bmpImg->Plalette[i].rgbReserved=0;
		}//新调色板
		 
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width%4!=0){
			offset=4-width%4;
		}
		long width_2=width+offset;//图像高宽，4的倍数， 

		for(i=0;i<height;i++){
			for(j=0;j<width_2-1;j++){
				bmpImg->imageData[i*width_2+j]=(int)quad[(int)bmpImg->imageData[i*width_2+j]].rgbRed;
				//由于新调色板的顺序排列，新索引就是原索引对应的调色板值。 
			}
		}
	}
	else{//24位图像不仅需要需要增加调色板，还需要更改图像信息。 
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;//计算一行实际字节数
		if(width%4!=0){
			offset=4-width%4;
		}
		long width_2=width+offset;//转为8位一行字节数仍是4的倍数。 
		
		bmpImg->BIH.biBitCount=8;//颜色位数 
		bmpImg->BFH.bfOffBits=(unsigned long)1078;//偏移量 
		bmpImg->BFH.bfSize=width_2*height+(unsigned long)1078;//文件大小 
		bmpImg->BIH.biSizeImage=width_2*height;//图片实际像素大小 
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		for(i=0;i<256;i++){
			bmpImg->Plalette[i].rgbRed=i;
			bmpImg->Plalette[i].rgbGreen=i;
			bmpImg->Plalette[i].rgbBlue=i;/////
			bmpImg->Plalette[i].rgbReserved=0;
		} //增加调色板 

		unsigned char* bmpdata=bmpImg->imageData;//需要一个指针指向原像素数据 
		
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		//新的像素数据 
		for(i=0;i<height;i++){
			for(j=0;j<width;j++){
				r=bmpdata[i*width_+j*3];
				g=bmpdata[i*width_+1+j*3];
				b=bmpdata[i*width_+2+j*3];
				if((bmpdata[i*width_+j*3]=(unsigned char)(0.299*r+0.587*g+0.114*b))>255)
					bmpdata[i*width_+j*3]=(unsigned char)255;
					//计算灰度 
				for(k=0;k<256;k++){
					if(bmpImg->Plalette[k].rgbRed==bmpdata[i*width_+j*3])
						bmpImg->imageData[i*width_2+j]=k;
						//改变灰度索引值 
				}
			}
			for(;j<width_2;j++){
				bmpImg->imageData[i*width_2+j]=(unsigned char)255;
			}
		}
			
	}
} 

void log_visi(myBmpFile* bmp_log,myBmpFile* bmpImg)
{
	int i;
	unsigned long size=bmpImg->BIH.biSizeImage;

	bmp_log->BFH=bmpImg->BFH;//复制文件头 
	bmp_log->BIH=bmpImg->BIH;//复制信息头 
	bmp_log->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_log->Plalette[i].rgbRed=i;
		bmp_log->Plalette[i].rgbGreen=i;
		bmp_log->Plalette[i].rgbBlue=i;
		bmp_log->Plalette[i].rgbReserved=0;
	} //建立调色板 
	bmp_log->imageData=(unsigned char*)malloc(sizeof(unsigned char)*size);
	memcpy(bmp_log->imageData,bmpImg->imageData,size);
	//将源bmp文件的信息克隆到目标bmp文件中 

	for(i=0;i<size;i++){
			bmp_log->imageData[i]=255*log(bmp_log->imageData[i]+1)/log(256);
	}
	
	return ;
}


void histeq(myBmpFile* bmp_hist,myBmpFile* bmpImg)
{
	int i;
	unsigned long size=bmpImg->BIH.biSizeImage;

	bmp_hist->BFH=bmpImg->BFH;
	bmp_hist->BIH=bmpImg->BIH;
	bmp_hist->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_hist->Plalette[i].rgbRed=i;
		bmp_hist->Plalette[i].rgbGreen=i;
		bmp_hist->Plalette[i].rgbBlue=i;
		bmp_hist->Plalette[i].rgbReserved=0;
	} 
	bmp_hist->imageData=(unsigned char*)malloc(sizeof(unsigned char)*size);
	memcpy(bmp_hist->imageData,bmpImg->imageData,size);
	//将源bmp文件的信息克隆到目标bmp文件中 
	
	int gray_num[256];
	for(i=0;i<256;i++){
		gray_num[i]=0;
	}//初始化数组 
	for(i=0;i<size;i++){
		gray_num[bmp_hist->imageData[i]]++;
	}//统计灰度直方图 
	
	double P[256];
	for(i=0;i<256;i++){
		P[i]=(double)gray_num[i]/size;
		if(i>0)P[i]=P[i]+P[i-1];
	}//计算累计分布概率 
	for(i=0;i<size;i++){
		if(bmp_hist->imageData[i]<201)
			bmp_hist->imageData[i]=200*P[bmp_hist->imageData[i]];
		//bmp_hist->imageData[i]=255*P[bmp_hist->imageData[i]];
	}//对于较小灰度，重新映射至0~200 
	return ;
}

