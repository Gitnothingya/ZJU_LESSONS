#ifndef BMP_H  
#define BMP_H  


typedef struct  
{
	unsigned short    bfType;  
	unsigned long     bfSize;  
	unsigned short    bfReserved1;  
	unsigned short    bfReserved2;  
	unsigned long     bfOffBits;  
}myBitMapFileHeader;  //λͼ�ļ�ͷ

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
} myBitMapInfoHeader;  //λͼ�ļ�ͷ 

typedef struct   
{  
	unsigned char rgbBlue; 		//����ɫ����ɫ���� 
	unsigned char rgbGreen;	 	//����ɫ����ɫ���� 
	unsigned char rgbRed; 		//����ɫ�ĺ�ɫ���� 
	unsigned char rgbReserved; 	 
} myRgbQuad;  //��ɫ�� 

typedef struct  
{  
	myBitMapFileHeader BFH;	//�ļ�ͷ 
	myBitMapInfoHeader BIH;	//��Ϣͷ 
	myRgbQuad *Plalette; 	//��ɫ�� 
	unsigned char* imageData;  
}myBmpFile;  



/*��������	void ReadBmp(myBmpFile *bmpImg,const char* path);
 *������	const char* path��bmpͼƬ�ļ�������������ļ�����ͬһ�ļ��У���Ҫ����·���� 
 *          myBmpFile *bmpImg���洢��Ϣ�Ľṹ�塣 
 *���ܣ�	�ú�����ȡһ��bmpͼ���ļ�����������Ϣ����ṹ�� myBmpFile�У�
 *			�ɹ�ʱ���ظýṹ��ָ�룬ʧ�ܷ���NULL
 *          Ŀǰ���ܶ�ȡ8λ��24λ��ɫͼ�� 
 */ 
void ReadBmp(myBmpFile *bmpImg,const char* path); 

/*��������	int WriteBmp(const char* path, myBmpFile *bmpImg)
 *������	const char* path��bmpͼƬ�ļ�������������ļ�����ͬһ�ļ��У���Ҫ����·���� 
 *			myBmpFile *bmpImg�� �洢����Ҫд��bmp�ļ���Ϣ�Ľṹ��ָ�롣 	 
 *���ܣ�	�ú������ṹ�� myBmpFile �е���Ϣд��һ��bmp�ļ��� 
 *			�ɹ����� 1��ʧ�ܷ��� 0��
 *			Ŀǰֻ֧��8λ��24λ��ɫͼ 
 */ 
int WriteBmp(const char* path, myBmpFile *bmpImg);

/*��������	void rgb2yuv(myBmpFile *bmpImg);
 *������	myBmpFile *bmpImg��	 ��Ҫת���Ĵ洢bmp��Ϣ�Ľṹָ�� 
 *���ܣ�	�ú�����bmp�ļ��е�rgbֵת��Ϊyuvֵ 
 *			�޷���ֵ 
 */ 
void rgb2yuv(myBmpFile *bmpImg);

/*��������	void yuv2Gray(myBmpFile *Bgray,myBmpFile *bmpImg)
 *������	myBmpFile *bmpImg��	 ��Ҫת���Ĵ洢bmp��Ϣ�Ľṹָ�� 
 *			myBmpFile *Bgray��	 ���ջҶ�ͼ��Ϣ��Žṹ���ָ�� 
 *���ܣ�	�ú�������ɫbmp�ļ��е�yuvֵ����Ϊy,�γɻҶ�ͼ��Ϣ���洢�� 
 *			�޷���ֵ 
 */
void yuv2Gray(myBmpFile *Bgray,myBmpFile *bmpImg);

/*��������	void Rearrange(myBmpFile *Bgray)
 *������	myBmpFile *Bgray��	 ��Ҫ���ŵĻҶ�ͼ��Ϣ��ŵĽṹ��ָ�� 
 *���ܣ�	��ָ���Ҷ�ͼ��Ϣ�еĻҶ�����ӳ����[0,255] 
 *			�޷���ֵ 
 */
void Rearrange(myBmpFile *Bgray);

/*��������	void yuv2rgb(myBmpFile *bmpImg)
 *������	myBmpFile *bmpImg��	 ��Ҫת���Ĵ洢bmp��Ϣ�Ľṹָ�� 
 *���ܣ�	�ú�����bmp�ļ��е�yuvֵת��Ϊrgbֵ 
 */
void yuv2rgb(myBmpFile *bmpImg);
 
#endif
