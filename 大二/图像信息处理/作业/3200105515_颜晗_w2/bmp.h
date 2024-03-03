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
 *������	path��bmpͼƬ�ļ�������������ļ�����ͬһ�ļ��У���Ҫ����·���� 
 *          bmpImg���洢��Ϣ�Ľṹ�塣 
 *���ܣ�	�ú�����ȡһ��bmpͼ���ļ�����������Ϣ����ṹ�� myBmpFile�У�
 *			�ɹ�ʱ���ظýṹ��ָ�룬ʧ�ܷ���NULL
 *          Ŀǰ���ܶ�ȡ8λ��24λ��ɫͼ�� 
 */ 
void ReadBmp(myBmpFile *bmpImg,const char* path); 

/*��������	int WriteBmp(const char* path, myBmpFile *bmpImg)
 *������	path��bmpͼƬ�ļ�������������ļ�����ͬһ�ļ��У���Ҫ����·���� 
 *			bmpImg�� �洢����Ҫд��bmp�ļ���Ϣ�Ľṹ��ָ�롣 	 
 *���ܣ�	�ú������ṹ�� myBmpFile �е���Ϣд��һ��bmp�ļ��� 
 *			�ɹ����� 1��ʧ�ܷ��� 0��
 *			Ŀǰֻ֧��8λ��24λ��ɫͼ 
 */ 
int WriteBmp(const char* path, myBmpFile *bmpImg);
 
/*��������	cor2gray(myBmpFile* bmpImg);
 *������ 	bmpImg�� �洢����Ҫת��Ϊ�Ҷȵ�bmp�ļ���Ϣ 	 
 *���ܣ�	�ú�������ɫbmpͼ��ת��Ϊ����Ҷ�ͼ 
 */ 
void cor2gray(myBmpFile* bmpImg);

/*��������	get_Thresh(myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫ������ֵ��bmp�ļ���Ϣ�Ľṹ��ָ�롣 	 
 *���ܣ�	���ݴ����bmp�ļ���Ϣ������ֵ ,���������ֵ 
 */ 
unsigned char get_Thresh(myBmpFile *bmpImg);


/*��������	gray2bin(unsigned char threshold,myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫת��Ϊ��ֵͼ���bmp�ļ���Ϣ�Ľṹ��ָ�롣 
 *			threshold��	���ݴ�򷨼������ֵ	 
 *���ܣ�	�ú������ݴ������ֵ���Ҷ�ͼת��Ϊ��ֵͼ�� 
 */ 
void gray2bin(unsigned char threshold,myBmpFile *bmpImg);


/*��������	delation(myBmpFile *bmp_d,myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫ���͵�bmp�ļ���Ϣ�Ľṹ��ָ�롣
 *			bmp_d��  ���������͵�bmp�ļ���Ϣָ�� 	
 *���ܣ�	��Դbmp�������Ͳ����󽫽�������ָ���ṹ����
 *			���߱�Ϊ��ͬ�ṹ�� 
 */ 
void delation(myBmpFile *bmp_d,myBmpFile *bmpImg);


/*��������	erosion(myBmpFile *bmp_e,myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫ��ʴ��bmp�ļ���Ϣ�Ľṹ��ָ�롣 	
 *			bmp_e�� �����˸�ʴ��bmp�ļ���Ϣָ�� 
 *���ܣ�	��Դbmp���и�ʴ�����󽫽�������ָ���ṹ����
 *			���߱�Ϊ��ͬ�ṹ��
 */ 
void erosion(myBmpFile *bmp_e,myBmpFile *bmpImg);


/*��������	opening(myBmpFile *bmp_o,myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫ���п�������bmp�ļ���Ϣ�Ľṹ��ָ�롣 	 
 *			bmp_o�� �����˿�������bmp�ļ���Ϣָ�� 
 *���ܣ�	��Դbmp���п������󽫽�������ָ���ṹ����
 *			���߱�Ϊ��ͬ�ṹ��
 */ 
void opening(myBmpFile *bmp_o,myBmpFile *bmpImg);


/*��������	closing(myBmpFile *bmp_c,myBmpFile *bmpImg)
 *������	bmpImg�� �洢����Ҫ���бղ�����bmp�ļ���Ϣ�Ľṹ��ָ�롣 	
 *			bmp_c�������˱ղ�����bmp�ļ���Ϣָ�� 
 *���ܣ�	��Դbmp���бղ����󽫽�������ָ���ṹ����
 *			���߱�Ϊ��ͬ�ṹ��
 */ 
void closing(myBmpFile *bmp_c,myBmpFile *bmpImg);



#endif
