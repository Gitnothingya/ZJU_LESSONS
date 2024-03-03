#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
#include "bmp.h"

#define Pi 3.14159265
int max(int m,int n){
	if(m>n)return m;
	else return n;
}
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
	//printf("%d ",bmpFileHeader.bfOffBits);//////////////////////////////

	fread(&bmpInfoHeader, sizeof(myBitMapInfoHeader), 1, pFile);
	bmpImg->BIH=bmpInfoHeader;//��ȡλͼ��Ϣͷ
	//printf("%d %d",bmpInfoHeader.biSize,bmpInfoHeader.biSizeImage);
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

void Translation(myBmpFile* bmpImg,myBmpFile* bmp_T,int LR,int UD)//������������ 
{
	int i,j,m,n;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;//�õ�ԭͼ����� 
	
	bmp_T->BFH=bmpImg->BFH;
	bmp_T->BIH=bmpImg->BIH;
	bmp_T->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_T->Plalette[i].rgbRed=i;
		bmp_T->Plalette[i].rgbGreen=i;
		bmp_T->Plalette[i].rgbBlue=i;
		bmp_T->Plalette[i].rgbReserved=0;
	}//��ʼ����bmp������Ϣ 
	
	long width2=width+abs(LR);//�����¿� 
	long height2=height+abs(UD);//�����³� 
	bmp_T->BIH.biWidth=width2;
	bmp_T->BIH.biHeight=height2;
	
	int offset=0;
	if(width%4!=0){
		offset=4-(width%4);
	}
	long width_=width+offset;
	if(width2%4!=0){
		offset=4-(width2%4);
	}
	long width2_=width2+offset;
	//�ֱ����ʵ�ʵȵĿ�4�ı����� 
	
	bmp_T->imageData=(unsigned char*)malloc(width2_*height2);
	bmp_T->BFH.bfSize=(unsigned long)(1078+width2_*height2);
	bmp_T->BIH.biSizeImage=(unsigned long)(width2_*height2);
	
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_T->imageData[i*width2_+j]=0;
		}
	}//��ʼ������������ɫΪ��ɫ�� 
	
	long Sx;//��bmp�Ŀ��ʼ���꣬ͼ�����Ƽ��ұ����ڣ���ʼ����Ϊ0�����Ƴ�ʼ����Ϊ�ƶ������� 
	long Sy; //�������Ƽ��ϲ����ڣ���ʼ����0�����Ƽ����ƶ�������Ϊ��ʼ���� 
	if(LR<0){Sx=0;} 
	else 	{Sx=LR;}
	if(UD<0){Sy=0;}
	else 	{Sy=UD;}
	
	for(i=Sy,m=0;m<height;i++,m++){
		for(j=Sx,n=0;n<width;n++,j++){
			bmp_T->imageData[i*width2_+j]=bmpImg->imageData[m*width_+n];
		}//����ӳ�� 
	}
	return ;
}

void Rotation(myBmpFile* bmpImg,myBmpFile* bmp_R,int angle)
{
	int i,j;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;
	double theta=(double)angle/180*Pi;//����ǶȵĻ�����ֵ 
	
	bmp_R->BFH=bmpImg->BFH;
	bmp_R->BIH=bmpImg->BIH;
	bmp_R->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_R->Plalette[i].rgbRed=i;
		bmp_R->Plalette[i].rgbGreen=i;
		bmp_R->Plalette[i].rgbBlue=i;
		bmp_R->Plalette[i].rgbReserved=0;
	}
	//��ʼ��������Ϣ 
	 
	long width_;
	if(width%4)width_=width+(4-(width%4));
	else width_=width;
	long width2=max(width,height)*1.5;
	long height2=max(width,height)*1.5;
	long width2_;
	if(width2%4)width2_=width2+(4-(width2%4));
	else width2_=width2;
	//����ʵ����Ҫ�����ؿ�ȣ�4�ı����� 
	
	long dx1=width_/2,dy1=height/2;
	long dx2=width2_/2,dy2=height2/2;
	//��������Ϊ����ԭ�������ת�������Ҫ����������ƫ���� 
	
	bmp_R->BIH.biWidth=width2;
	bmp_R->BIH.biHeight=height2;
	bmp_R->BIH.biSizeImage=width2_*height2;
	bmp_R->BFH.bfSize=width2_*height2+1078;
	bmp_R->imageData=(unsigned char*)malloc(width2_*height2);
	
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_R->imageData[i*width2_+j]=0;
		}
	}//��ʼ������������ɫΪ��ɫ�� 
	
	for(i=0;i<height;i++){
		for(j=0;j<width_;j++){
			int x1=j-dx1,x2,y1=i-dy1,y2;
			x2=(int)(x1*cos(theta))-(int)(y1*sin(theta))+dx2;
			y2=(int)(x1*sin(theta))+(int)(y1*cos(theta))+dy2;
			bmp_R->imageData[y2*width2_+x2]=bmpImg->imageData[i*width_+j];
		}//��ԭͼ�����ص�ӳ������ͼ�С� 
	}
	for(i=0;i<height2;i++){
		for(j=1;j<width2_;j++){
			if(bmp_R->imageData[i*width2_+j-1]&&bmp_R->imageData[i*width2_+j+1]&&!bmp_R->imageData[i*width2_+j]) 
			bmp_R->imageData[i*width2_+j]=bmp_R->imageData[i*width2_+j-1];
		}
	} //����תʱͼ����ȱ������֮���޷���ȫ���Ǳ���������Ҫ��ֵ����ȫͼ���˴�ʹ������ڲ�ֵ 
	
	return ;
}

void Scale(myBmpFile* bmpImg,myBmpFile* bmp_Sc,double Xtimes,double Ytimes)
{
	int i,j;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;
	
	bmp_Sc->BFH=bmpImg->BFH;
	bmp_Sc->BIH=bmpImg->BIH;
	bmp_Sc->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_Sc->Plalette[i].rgbRed=i;
		bmp_Sc->Plalette[i].rgbGreen=i;
		bmp_Sc->Plalette[i].rgbBlue=i;
		bmp_Sc->Plalette[i].rgbReserved=0;
	}
	long width_;
	if(width%4)width_=width+(4-(width%4));
	else width_=width;
	
	long width2=width*Xtimes+1;
	long height2=height*Ytimes+1;
	long width2_;
	if(width2%4)width2_=width2+(4-(width2%4));
	else width2_=width2;
	
	
	bmp_Sc->BIH.biWidth=width2;
	bmp_Sc->BIH.biHeight=height2;
	bmp_Sc->BIH.biSizeImage=width2_*height2;
	bmp_Sc->BFH.bfSize=width2_*height2+1078;
	
	bmp_Sc->imageData=(unsigned char*)malloc(width2_*height2);
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_Sc->imageData[i*width2_+j]=0;
		}
	}//��ʼ������������ɫΪ��ɫ��
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_Sc->imageData[i*width2_+j]=bmpImg->imageData[(int)(i/Ytimes)*width_+(int)(j/Xtimes)];
		}//���������Զ�����С��λͬʱ���ӳ��Ͳ�ֵ������ 
	} 
	return ;
}

void Shear(myBmpFile* bmpImg,myBmpFile* bmp_Sh,int direction,double d)
{
	int i,j;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;
	
	bmp_Sh->BFH=bmpImg->BFH;
	bmp_Sh->BIH=bmpImg->BIH;
	bmp_Sh->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_Sh->Plalette[i].rgbRed=i;
		bmp_Sh->Plalette[i].rgbGreen=i;
		bmp_Sh->Plalette[i].rgbBlue=i;
		bmp_Sh->Plalette[i].rgbReserved=0;
	}
	long width_;
	if(width%4)width_=width+(4-(width%4));
	else width_=width;
	long width2,height2;
	
	//�ֱ�����ڲ�ͬ�����ϴ�����Ҫ����Ļ�������
	if(direction){//x
		if(d>0)width2=width+d*height;
		else width2=width+(-d)*height;
		height2=height;
	}
	else {//y
		width2=width;
		if(d>0)height2=height+d*width;
		else height2=height+(-d)*width;
	}
	 
	long width2_;
	if(width2%4)width2_=width2+(4-(width2%4));
	else width2_=width2;
	
	
	bmp_Sh->BIH.biWidth=width2;
	bmp_Sh->BIH.biHeight=height2;
	bmp_Sh->BIH.biSizeImage=width2_*height2;
	bmp_Sh->BFH.bfSize=width2_*height2+1078;
	
	bmp_Sh->imageData=(unsigned char*)malloc(width2_*height2);
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_Sh->imageData[i*width2_+j]=0;
		}
	}//��ʼ������������ɫΪ��ɫ��
	
	if(direction){//��x���� 
		int Sx;//��ʼ����+ƫ�������ɵõ��������� 
		if(d<0) Sx=(-d)*height2;
		else Sx=0;
		for(i=0;i<height;i++){
			for(j=0;j<width;j++){
				bmp_Sh->imageData[i*width2_+Sx+j+(int)(d*i)]=bmpImg->imageData[i*width_+j];
			}
		}
	}
	else {//��y����  
		int Sy;//ͬ�� 
		if(d<0) Sy=(-d)*width2;
		else Sy=0;
		for(i=0;i<height;i++){
			for(j=0;j<width_;j++){
				bmp_Sh->imageData[(Sy+i+(int)(d*j))*width2_+j]=bmpImg->imageData[i*width_+j];
			}
		}
	}
	
	
	return ;
	
}

void Mirror(myBmpFile* bmpImg,myBmpFile* bmp_M,int direction)
{
	int i,j;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;
	
	bmp_M->BFH=bmpImg->BFH;
	bmp_M->BIH=bmpImg->BIH;
	bmp_M->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_M->Plalette[i].rgbRed=i;
		bmp_M->Plalette[i].rgbGreen=i;
		bmp_M->Plalette[i].rgbBlue=i;
		bmp_M->Plalette[i].rgbReserved=0;
	}

	long width_;
	if(width%4)width_=width+(4-(width%4));
	else width_=width;
	bmp_M->imageData=(unsigned char*)malloc(width_*height);
	if(direction){//����x��Գ� 
		for(i=0;i<height;i++){
			for(j=0;j<width_;j++){
				bmp_M->imageData[i*width_+j]=bmpImg->imageData[(height-i-1)*width_+j];
			}
		}
	}
	else {//����y��Գ� 
		for(i=0;i<height;i++){
			for(j=0;j<width_;j++){
				bmp_M->imageData[i*width_+j]=bmpImg->imageData[i*width_+width_-j];
			}
		}
	}
	return ;
}
