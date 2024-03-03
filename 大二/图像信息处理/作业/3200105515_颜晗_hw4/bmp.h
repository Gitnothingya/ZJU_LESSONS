#ifndef BMP_H  
#define BMP_H  


typedef struct  
{
	unsigned short    bfType;  
	unsigned long     bfSize;  
	unsigned short    bfReserved1;  
	unsigned short    bfReserved2;  
	unsigned long     bfOffBits;  
}myBitMapFileHeader;  //位图文件头

typedef struct  
{  
	unsigned long  		biSize;   
	long   				biWidth;   
	long   				biHeight;   
	unsigned short   	biPlanes;   
	unsigned short   	biBitCount;  
	unsigned long  		biCompression;   
	unsigned long  		biSizeImage;   
	long   				biXPelsPerMeter;   
	long   				biYPelsPerMeter;   
	unsigned long   	biClrUsed;   
	unsigned long   	biClrImportant;   
} myBitMapInfoHeader;  //位图文件头 

typedef struct   
{  
	unsigned char rgbBlue; 		//该颜色的蓝色分量 
	unsigned char rgbGreen;	 	//该颜色的绿色分量 
	unsigned char rgbRed; 		//该颜色的红色分量 
	unsigned char rgbReserved; 	 
} myRgbQuad;  //调色板 

typedef struct  
{  
	myBitMapFileHeader BFH;	//文件头 
	myBitMapInfoHeader BIH;	//信息头 
	myRgbQuad *Plalette; 	//调色板 
	unsigned char* imageData;  
}myBmpFile;  



/*函数名：	void ReadBmp(myBmpFile *bmpImg,const char* path);
 *参数：	path：bmp图片文件名，如与程序文件不在同一文件夹，需要加上路径。 
 *          bmpImg：存储信息的结构体。 
 *功能：	该函数读取一个bmp图像文件并将基本信息存入结构体 myBmpFile中，
 *			成功时返回该结构体指针，失败返回NULL
 *          目前仅能读取8位与24位彩色图。 
 */ 
void ReadBmp(myBmpFile *bmpImg,const char* path); 

/*函数名：	int WriteBmp(const char* path, myBmpFile *bmpImg)
 *参数：	path：bmp图片文件名，如与程序文件不在同一文件夹，需要加上路径。 
 *			bmpImg： 存储了需要写入bmp文件信息的结构体指针。 	 
 *功能：	该函数将结构体 myBmpFile 中的信息写入一个bmp文件， 
 *			成功返回 1，失败返回 0。
 *			目前只支持8位与24位彩色图 
 */ 
int WriteBmp(const char* path, myBmpFile *bmpImg);
 
/*函数名：	cor2gray(myBmpFile* bmpImg);
 *参数： 	bmpImg： 存储了需要转换为灰度的bmp文件信息 	 
 *功能：	该函数将彩色bmp图像转换为正规灰度图 
 */ 
void cor2gray(myBmpFile* bmpImg);


void Translation(myBmpFile* bmpImg,myBmpFile* bmp_T,int LR,int UD);//平移 
//正数右移上移；负数左移下移 ；LR,UD分别控制左右和上下 

void Rotation(myBmpFile* bmpImg,myBmpFile* bmp_R,int angle);//旋转 
//angle 旋转角，单位度（0~360） 

void Scale(myBmpFile* bmpImg,myBmpFile* bmp_Sc,double Xtimes,double Ytimes);//放缩 
//times 放缩比例，X控制宽，Y控制长。 

void Shear(myBmpFile* bmpImg,myBmpFile* bmp_Sh,int direction,double d);
//错切，direction为方向，0沿x轴，1沿y轴；d为错切系数。 

void Mirror(myBmpFile* bmpImg,myBmpFile* bmp_M,int direction);
//镜像 direction为方向，0沿y轴镜像，1沿x轴镜像 
 

#endif
