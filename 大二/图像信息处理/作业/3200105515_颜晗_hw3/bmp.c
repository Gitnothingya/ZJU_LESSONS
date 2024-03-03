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
	//�����ṹ�����������Ϊ�м��������ת����Ϣ��
	
	pFile = fopen(path, "rb"); 
	if(!pFile) perror("Failed to open file");
	

	fread(&bmpFileHeader.bfType,2, 1, pFile); 
	fread(&bmpFileHeader.bfSize,4, 1, pFile); 
	fread(&bmpFileHeader.bfReserved1,2, 1, pFile); 
	fread(&bmpFileHeader.bfReserved2,2, 1, pFile); 
	fread(&bmpFileHeader.bfOffBits,4, 1, pFile); 
	bmpImg->BFH=bmpFileHeader;//��ȡλͼ�ļ�ͷ
	

	fread(&bmpInfoHeader, sizeof(myBitMapInfoHeader), 1, pFile);
	bmpImg->BIH=bmpInfoHeader;//��ȡλͼ��Ϣͷ
	
	/*����8λ��24λ�������޵�ɫ���Լ�������ɫ��ʾ���������𣬹����к����������Ƿֿ�����*/
	if(bmpInfoHeader.biBitCount==8){
		fseek(pFile,bmpInfoHeader.biSize-40,SEEK_CUR);
		//����Ѱ�ҵĲ���ͼ��Ϣͷ�ṹ���С��һ��Ϊ40������Ҫ�ض�λ�ļ�ָ��Ѱ��������Ϣ
		
		quad=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		fread(quad,sizeof(myRgbQuad)*256,1,pFile);
		memcpy(bmpImg->Plalette,quad,sizeof(myRgbQuad)*256);
		/*ת�Ƶ�ɫ����Ϣ*/
		
		bmpData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);      
		fread(bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage,1,pFile);
		memcpy(bmpImg->imageData,bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		
		bmpImg->BFH.bfSize=54+bmpImg->BIH.biSizeImage+sizeof(myRgbQuad)*256;
	}   
	else if(bmpInfoHeader.biBitCount==24){//24λͼ�Ĵ���
		fseek(pFile,bmpInfoHeader.biSize-40,SEEK_CUR); //�ض�λ
		bmpImg->BIH.biSize=40;
		bmpImg->Plalette = quad;//��ɫ��ָ��Ϊ�ա�
		
		bmpData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpInfoHeader.biSizeImage);           
		fread(bmpData,bmpInfoHeader.biSizeImage,1,pFile);
		memcpy(bmpImg->imageData,bmpData,sizeof(unsigned char)*bmpInfoHeader.biSizeImage);
		/*ת��������Ϣ*/
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
	//ת����Ϣ���м����
	 
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
	
	if(bmpImg->Plalette){//8λͼ���޸ĵ�ɫ����Ϣ
		for(i=0;i<256;i++)
		{
			r=bmpImg->Plalette[i].rgbRed;
			g=bmpImg->Plalette[i].rgbGreen;
			b=bmpImg->Plalette[i].rgbBlue;
			//�洢������Ϣ�����ڼ��㣬������ʽ
			if((bmpImg->Plalette[i].rgbRed=(unsigned char)(0.299*r+0.587*g+0.114*b))>255)
				bmpImg->Plalette[i].rgbRed=(unsigned char)255;
			bmpImg->Plalette[i].rgbGreen=bmpImg->Plalette[i].rgbRed;
			bmpImg->Plalette[i].rgbBlue=bmpImg->Plalette[i].rgbRed;
		}
		myRgbQuad *quad=bmpImg->Plalette;
		//ԭ��ɫ��ɫ��ת��Ϊ�Ҷȵ�ɫ�壬��Ȼ��ɫ����Ҫ����
		//���ǻ���Ҫԭ��ɫ����ת�����ص����ݣ�������Ҫһ��ָ�� 
		
		 
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		for(i=0;i<256;i++){
			bmpImg->Plalette[i].rgbRed=i;
			bmpImg->Plalette[i].rgbGreen=i;
			bmpImg->Plalette[i].rgbBlue=i;/////
			bmpImg->Plalette[i].rgbReserved=0;
		}//�µ�ɫ��
		 
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		int offset=0;
		if(width%4!=0){
			offset=4-width%4;
		}
		long width_2=width+offset;//ͼ��߿�4�ı����� 

		for(i=0;i<height;i++){
			for(j=0;j<width_2-1;j++){
				bmpImg->imageData[i*width_2+j]=(int)quad[(int)bmpImg->imageData[i*width_2+j]].rgbRed;
				//�����µ�ɫ���˳�����У�����������ԭ������Ӧ�ĵ�ɫ��ֵ�� 
			}
		}
	}
	else{//24λͼ�񲻽���Ҫ��Ҫ���ӵ�ɫ�壬����Ҫ����ͼ����Ϣ�� 
		long height=bmpImg->BIH.biHeight;
		long width=bmpImg->BIH.biWidth;
		
		int offset=0;
		if(width*3%4!=0){
			offset=4-width*3%4;
		}
		long width_=width*3+offset;//����һ��ʵ���ֽ���
		if(width%4!=0){
			offset=4-width%4;
		}
		long width_2=width+offset;//תΪ8λһ���ֽ�������4�ı����� 
		
		bmpImg->BIH.biBitCount=8;//��ɫλ�� 
		bmpImg->BFH.bfOffBits=(unsigned long)1078;//ƫ���� 
		bmpImg->BFH.bfSize=width_2*height+(unsigned long)1078;//�ļ���С 
		bmpImg->BIH.biSizeImage=width_2*height;//ͼƬʵ�����ش�С 
		bmpImg->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
		for(i=0;i<256;i++){
			bmpImg->Plalette[i].rgbRed=i;
			bmpImg->Plalette[i].rgbGreen=i;
			bmpImg->Plalette[i].rgbBlue=i;/////
			bmpImg->Plalette[i].rgbReserved=0;
		} //���ӵ�ɫ�� 

		unsigned char* bmpdata=bmpImg->imageData;//��Ҫһ��ָ��ָ��ԭ�������� 
		
		bmpImg->imageData=(unsigned char*)malloc(sizeof(unsigned char)*bmpImg->BIH.biSizeImage);
		//�µ��������� 
		for(i=0;i<height;i++){
			for(j=0;j<width;j++){
				r=bmpdata[i*width_+j*3];
				g=bmpdata[i*width_+1+j*3];
				b=bmpdata[i*width_+2+j*3];
				if((bmpdata[i*width_+j*3]=(unsigned char)(0.299*r+0.587*g+0.114*b))>255)
					bmpdata[i*width_+j*3]=(unsigned char)255;
					//����Ҷ� 
				for(k=0;k<256;k++){
					if(bmpImg->Plalette[k].rgbRed==bmpdata[i*width_+j*3])
						bmpImg->imageData[i*width_2+j]=k;
						//�ı�Ҷ�����ֵ 
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

	bmp_log->BFH=bmpImg->BFH;//�����ļ�ͷ 
	bmp_log->BIH=bmpImg->BIH;//������Ϣͷ 
	bmp_log->Plalette=(myRgbQuad*)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_log->Plalette[i].rgbRed=i;
		bmp_log->Plalette[i].rgbGreen=i;
		bmp_log->Plalette[i].rgbBlue=i;
		bmp_log->Plalette[i].rgbReserved=0;
	} //������ɫ�� 
	bmp_log->imageData=(unsigned char*)malloc(sizeof(unsigned char)*size);
	memcpy(bmp_log->imageData,bmpImg->imageData,size);
	//��Դbmp�ļ�����Ϣ��¡��Ŀ��bmp�ļ��� 

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
	//��Դbmp�ļ�����Ϣ��¡��Ŀ��bmp�ļ��� 
	
	int gray_num[256];
	for(i=0;i<256;i++){
		gray_num[i]=0;
	}//��ʼ������ 
	for(i=0;i<size;i++){
		gray_num[bmp_hist->imageData[i]]++;
	}//ͳ�ƻҶ�ֱ��ͼ 
	
	double P[256];
	for(i=0;i<256;i++){
		P[i]=(double)gray_num[i]/size;
		if(i>0)P[i]=P[i]+P[i-1];
	}//�����ۼƷֲ����� 
	for(i=0;i<size;i++){
		if(bmp_hist->imageData[i]<201)
			bmp_hist->imageData[i]=200*P[bmp_hist->imageData[i]];
		//bmp_hist->imageData[i]=255*P[bmp_hist->imageData[i]];
	}//���ڽ�С�Ҷȣ�����ӳ����0~200 
	return ;
}

