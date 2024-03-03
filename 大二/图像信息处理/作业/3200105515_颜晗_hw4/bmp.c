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
	//基本结构体的声明，作为中间变量用于转移信息。
	
	pFile = fopen(path, "rb"); 
	if(!pFile) perror("Failed to open file");
	

	fread(&bmpFileHeader.bfType,2, 1, pFile); 
	fread(&bmpFileHeader.bfSize,4, 1, pFile); 
	fread(&bmpFileHeader.bfReserved1,2, 1, pFile); 
	fread(&bmpFileHeader.bfReserved2,2, 1, pFile); 
	fread(&bmpFileHeader.bfOffBits,4, 1, pFile); 
	bmpImg->BFH=bmpFileHeader;//读取位图文件头
	//printf("%d ",bmpFileHeader.bfOffBits);//////////////////////////////

	fread(&bmpInfoHeader, sizeof(myBitMapInfoHeader), 1, pFile);
	bmpImg->BIH=bmpInfoHeader;//读取位图信息头
	//printf("%d %d",bmpInfoHeader.biSize,bmpInfoHeader.biSizeImage);
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

void Translation(myBmpFile* bmpImg,myBmpFile* bmp_T,int LR,int UD)//正数上移右移 
{
	int i,j,m,n;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;//得到原图长与宽 
	
	bmp_T->BFH=bmpImg->BFH;
	bmp_T->BIH=bmpImg->BIH;
	bmp_T->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_T->Plalette[i].rgbRed=i;
		bmp_T->Plalette[i].rgbGreen=i;
		bmp_T->Plalette[i].rgbBlue=i;
		bmp_T->Plalette[i].rgbReserved=0;
	}//初始化新bmp基本信息 
	
	long width2=width+abs(LR);//计算新宽 
	long height2=height+abs(UD);//计算新长 
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
	//分别计算实际等的宽（4的倍数） 
	
	bmp_T->imageData=(unsigned char*)malloc(width2_*height2);
	bmp_T->BFH.bfSize=(unsigned long)(1078+width2_*height2);
	bmp_T->BIH.biSizeImage=(unsigned long)(width2_*height2);
	
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_T->imageData[i*width2_+j]=0;
		}
	}//初始化画布，背景色为黑色， 
	
	long Sx;//新bmp的宽初始坐标，图像左移即右边留黑，初始坐标为0；右移初始坐标为移动像素数 
	long Sy; //长：下移即上部留黑，初始坐标0，下移即将移动距离作为初始坐标 
	if(LR<0){Sx=0;} 
	else 	{Sx=LR;}
	if(UD<0){Sy=0;}
	else 	{Sy=UD;}
	
	for(i=Sy,m=0;m<height;i++,m++){
		for(j=Sx,n=0;n<width;n++,j++){
			bmp_T->imageData[i*width2_+j]=bmpImg->imageData[m*width_+n];
		}//坐标映射 
	}
	return ;
}

void Rotation(myBmpFile* bmpImg,myBmpFile* bmp_R,int angle)
{
	int i,j;
	long width=bmpImg->BIH.biWidth;
	long height=bmpImg->BIH.biHeight;
	double theta=(double)angle/180*Pi;//计算角度的弧度制值 
	
	bmp_R->BFH=bmpImg->BFH;
	bmp_R->BIH=bmpImg->BIH;
	bmp_R->Plalette=(myRgbQuad *)malloc(sizeof(myRgbQuad)*256);
	for(i=0;i<256;i++){
		bmp_R->Plalette[i].rgbRed=i;
		bmp_R->Plalette[i].rgbGreen=i;
		bmp_R->Plalette[i].rgbBlue=i;
		bmp_R->Plalette[i].rgbReserved=0;
	}
	//初始化基本信息 
	 
	long width_;
	if(width%4)width_=width+(4-(width%4));
	else width_=width;
	long width2=max(width,height)*1.5;
	long height2=max(width,height)*1.5;
	long width2_;
	if(width2%4)width2_=width2+(4-(width2%4));
	else width2_=width2;
	//计算实际需要的像素宽度（4的倍数） 
	
	long dx1=width_/2,dy1=height/2;
	long dx2=width2_/2,dy2=height2/2;
	//以中心作为坐标原点进行旋转，因此需要计算坐标轴偏移量 
	
	bmp_R->BIH.biWidth=width2;
	bmp_R->BIH.biHeight=height2;
	bmp_R->BIH.biSizeImage=width2_*height2;
	bmp_R->BFH.bfSize=width2_*height2+1078;
	bmp_R->imageData=(unsigned char*)malloc(width2_*height2);
	
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_R->imageData[i*width2_+j]=0;
		}
	}//初始化画布，背景色为黑色， 
	
	for(i=0;i<height;i++){
		for(j=0;j<width_;j++){
			int x1=j-dx1,x2,y1=i-dy1,y2;
			x2=(int)(x1*cos(theta))-(int)(y1*sin(theta))+dx2;
			y2=(int)(x1*sin(theta))+(int)(y1*cos(theta))+dy2;
			bmp_R->imageData[y2*width2_+x2]=bmpImg->imageData[i*width_+j];
		}//将原图的像素点映射至新图中。 
	}
	for(i=0;i<height2;i++){
		for(j=1;j<width2_;j++){
			if(bmp_R->imageData[i*width2_+j-1]&&bmp_R->imageData[i*width2_+j+1]&&!bmp_R->imageData[i*width2_+j]) 
			bmp_R->imageData[i*width2_+j]=bmp_R->imageData[i*width2_+j-1];
		}
	} //在旋转时图像有缺损像素之间无法完全覆盖背景，即需要插值补足全图，此处使用最近邻插值 
	
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
	}//初始化画布，背景色为黑色，
	for(i=0;i<height2;i++){
		for(j=0;j<width2_;j++){
			bmp_Sc->imageData[i*width2_+j]=bmpImg->imageData[(int)(i/Ytimes)*width_+(int)(j/Xtimes)];
		}//利用整型自动舍弃小数位同时完成映射和插值操作。 
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
	
	//分别计算在不同方向上错切需要扩大的画布参数
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
	}//初始化画布，背景色为黑色，
	
	if(direction){//沿x错切 
		int Sx;//初始坐标+偏移量即可得到所需坐标 
		if(d<0) Sx=(-d)*height2;
		else Sx=0;
		for(i=0;i<height;i++){
			for(j=0;j<width;j++){
				bmp_Sh->imageData[i*width2_+Sx+j+(int)(d*i)]=bmpImg->imageData[i*width_+j];
			}
		}
	}
	else {//沿y错切  
		int Sy;//同上 
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
	if(direction){//关于x轴对称 
		for(i=0;i<height;i++){
			for(j=0;j<width_;j++){
				bmp_M->imageData[i*width_+j]=bmpImg->imageData[(height-i-1)*width_+j];
			}
		}
	}
	else {//关于y轴对称 
		for(i=0;i<height;i++){
			for(j=0;j<width_;j++){
				bmp_M->imageData[i*width_+j]=bmpImg->imageData[i*width_+width_-j];
			}
		}
	}
	return ;
}
