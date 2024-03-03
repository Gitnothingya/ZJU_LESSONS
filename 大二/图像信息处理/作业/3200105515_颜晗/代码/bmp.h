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
 *参数：	const char* path：bmp图片文件名，如与程序文件不在同一文件夹，需要加上路径。 
 *          myBmpFile *bmpImg：存储信息的结构体。 
 *功能：	该函数读取一个bmp图像文件并将基本信息存入结构体 myBmpFile中，
 *			成功时返回该结构体指针，失败返回NULL
 *          目前仅能读取8位与24位彩色图。 
 */ 
void ReadBmp(myBmpFile *bmpImg,const char* path); 

/*函数名：	int WriteBmp(const char* path, myBmpFile *bmpImg)
 *参数：	const char* path：bmp图片文件名，如与程序文件不在同一文件夹，需要加上路径。 
 *			myBmpFile *bmpImg： 存储了需要写入bmp文件信息的结构体指针。 	 
 *功能：	该函数将结构体 myBmpFile 中的信息写入一个bmp文件， 
 *			成功返回 1，失败返回 0。
 *			目前只支持8位与24位彩色图 
 */ 
int WriteBmp(const char* path, myBmpFile *bmpImg);

/*函数名：	void rgb2yuv(myBmpFile *bmpImg);
 *参数：	myBmpFile *bmpImg：	 需要转换的存储bmp信息的结构指针 
 *功能：	该函数将bmp文件中的rgb值转换为yuv值 
 *			无返回值 
 */ 
void rgb2yuv(myBmpFile *bmpImg);

/*函数名：	void yuv2Gray(myBmpFile *Bgray,myBmpFile *bmpImg)
 *参数：	myBmpFile *bmpImg：	 需要转换的存储bmp信息的结构指针 
 *			myBmpFile *Bgray：	 最终灰度图信息存放结构体的指针 
 *功能：	该函数将彩色bmp文件中的yuv值都置为y,形成灰度图信息并存储。 
 *			无返回值 
 */
void yuv2Gray(myBmpFile *Bgray,myBmpFile *bmpImg);

/*函数名：	void Rearrange(myBmpFile *Bgray)
 *参数：	myBmpFile *Bgray：	 需要重排的灰度图信息存放的结构体指针 
 *功能：	将指定灰度图信息中的灰度重新映射至[0,255] 
 *			无返回值 
 */
void Rearrange(myBmpFile *Bgray);

/*函数名：	void yuv2rgb(myBmpFile *bmpImg)
 *参数：	myBmpFile *bmpImg：	 需要转换的存储bmp信息的结构指针 
 *功能：	该函数将bmp文件中的yuv值转换为rgb值 
 */
void yuv2rgb(myBmpFile *bmpImg);
 
#endif
