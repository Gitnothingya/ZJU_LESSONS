#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h> 
#include "imgui.h"

typedef struct Box{  //����
	double xi,yi,xf,yf;
	int colorindex;
}Box;

Box editbutton[100];
Box functionbutton[10];
Box colorbutton[30];

typedef struct Line{  //ֱ��
	double xi,yi,dx,dy;
}Line;

typedef struct Oval{  //��Բ
	double x,y,a,b;
}Oval;

typedef struct TextRect{  //�ı�
	char text[100];
	Box TextR;
	double  textx,texty;
	int  size;//�����С 
	int len; //�ַ������� 
	bool edit;//�Ƿ�༭�жϣ��Ƿ���ֱ༭�򣬹����˸�� 
}TextRect;

typedef struct Figure{  //ͼ��Ԫ�ؽڵ�
	int label;  //label==1,�ڵ�Ԫ��Ϊ��Բ��label==2,�ڵ�Ԫ��Ϊֱ�ߣ�
	            //label==3,�ڵ�Ԫ��Ϊ���Σ�label==4 �ڵ�Ԫ��Ϊ�ı��� 
	int layer;  //ͼ��
	Box *B;
	Line *L;
	Oval *O;
	TextRect *T;
	Box *zone;
	struct Figure* next;
	char *color;
}Figure;

double Max(double x, double y);
double Min(double x, double y);
int distance(double xi,double yi,double xf,double yf);

//��ť��� 
void isineditbutton(double x,double y); 
void DrawButton(void);
bool isinbutton(double x,double y,Box b);
int isinfunctionbutton(double x,double y);
int isincolorbutton(double x,double y);
void DrawPen(void);//��ťͼ�Ρ��ʡ� 
void DrawMouse(void);// ��ťͼ�Ρ���ꡱ 
void DrawMark(void);
void DrawColorplate(void);
void DefineColor_(string name,double red,double green,double blue);
void switchcolor(double x,double y);
void givecolor(double x,double y);

//����ʽ��ͼ���� 
void DrawBox(double xi,double yi,double xf,double yf);
void DrawOval(double xi,double yi,double xf,double yf);
void DrawDottedLine(double dx,double dy);//���� 
void DrawDottedBox(double xi,double yi,double xf,double yf);//���߿� 

 
Figure* NewList(void);//�½�����
void deletefigure(); //ɾ��Ԫ��
void Init_(void);//��ʼ����������
void Draw(void);//���������»�ͼ�� 


//�½��ṹ�� 
void NewOval(double xi,double yi,double xf,double yf);
void NewLine(double xi,double yi,double xf,double yf);
void NewBox(double xi,double yi,double xf,double yf);
void NewText(double xi,double yi,double xf,double yf);
void cleantext(char a[100]);

//�ṹ�廭ͼ���� 
void DrawB(Box B);
void DrawColorB(Box B);
void DrawOval_(Figure *f);
void DrawLine_(Figure *f);
void DrawBox_(Figure *f);
void DrawText_(Figure *f);
void DrawDottedBox_(Figure *f);

//ѡ�����
Figure* isinzone(double x, double y);


























