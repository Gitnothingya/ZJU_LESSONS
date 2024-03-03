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

/*函数名：	get_Thresh(myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要计算阈值的bmp文件信息的结构体指针。 	 
 *功能：	根据传入的bmp文件信息计算阈值 ,返回这个阈值 
 */ 
unsigned char get_Thresh(myBmpFile *bmpImg);


/*函数名：	gray2bin(unsigned char threshold,myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要转换为二值图像的bmp文件信息的结构体指针。 
 *			threshold：	根据大津法计算的阈值	 
 *功能：	该函数根据传入的阈值将灰度图转换为二值图像 
 */ 
void gray2bin(unsigned char threshold,myBmpFile *bmpImg);


/*函数名：	delation(myBmpFile *bmp_d,myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要膨胀的bmp文件信息的结构体指针。
 *			bmp_d：  经过了膨胀的bmp文件信息指针 	
 *功能：	将源bmp进行膨胀操作后将结果输出到指定结构体中
 *			两者必为不同结构体 
 */ 
void delation(myBmpFile *bmp_d,myBmpFile *bmpImg);


/*函数名：	erosion(myBmpFile *bmp_e,myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要腐蚀的bmp文件信息的结构体指针。 	
 *			bmp_e： 经过了腐蚀的bmp文件信息指针 
 *功能：	将源bmp进行腐蚀操作后将结果输出到指定结构体中
 *			两者必为不同结构体
 */ 
void erosion(myBmpFile *bmp_e,myBmpFile *bmpImg);


/*函数名：	opening(myBmpFile *bmp_o,myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要进行开操作的bmp文件信息的结构体指针。 	 
 *			bmp_o： 经过了开操作的bmp文件信息指针 
 *功能：	将源bmp进行开操作后将结果输出到指定结构体中
 *			两者必为不同结构体
 */ 
void opening(myBmpFile *bmp_o,myBmpFile *bmpImg);


/*函数名：	closing(myBmpFile *bmp_c,myBmpFile *bmpImg)
 *参数：	bmpImg： 存储了需要进行闭操作的bmp文件信息的结构体指针。 	
 *			bmp_c：经过了闭操作的bmp文件信息指针 
 *功能：	将源bmp进行闭操作后将结果输出到指定结构体中
 *			两者必为不同结构体
 */ 
void closing(myBmpFile *bmp_c,myBmpFile *bmpImg);



#endif
