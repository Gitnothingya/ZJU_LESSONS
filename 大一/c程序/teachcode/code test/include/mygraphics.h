#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h> 
#include "imgui.h"

typedef struct Box{  //矩形
	double xi,yi,xf,yf;
	int colorindex;
}Box;

Box editbutton[100];
Box functionbutton[10];
Box colorbutton[30];

typedef struct Line{  //直线
	double xi,yi,dx,dy;
}Line;

typedef struct Oval{  //椭圆
	double x,y,a,b;
}Oval;

typedef struct TextRect{  //文本
	char text[100];
	Box TextR;
	double  textx,texty;
	int  size;//字体大小 
	int len; //字符串长度 
	bool edit;//是否编辑判断（是否出现编辑框，光标闪烁） 
}TextRect;

typedef struct Figure{  //图形元素节点
	int label;  //label==1,节点元素为椭圆，label==2,节点元素为直线，
	            //label==3,节点元素为矩形，label==4 节点元素为文本框 
	int layer;  //图层
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

//按钮相关 
void isineditbutton(double x,double y); 
void DrawButton(void);
bool isinbutton(double x,double y,Box b);
int isinfunctionbutton(double x,double y);
int isincolorbutton(double x,double y);
void DrawPen(void);//按钮图形“笔” 
void DrawMouse(void);// 按钮图形“鼠标” 
void DrawMark(void);
void DrawColorplate(void);
void DefineColor_(string name,double red,double green,double blue);
void switchcolor(double x,double y);
void givecolor(double x,double y);

//两点式画图函数 
void DrawBox(double xi,double yi,double xf,double yf);
void DrawOval(double xi,double yi,double xf,double yf);
void DrawDottedLine(double dx,double dy);//虚线 
void DrawDottedBox(double xi,double yi,double xf,double yf);//虚线框 

 
Figure* NewList(void);//新建链表
void deletefigure(); //删除元素
void Init_(void);//初始化界面数据
void Draw(void);//按链表重新画图形 


//新建结构体 
void NewOval(double xi,double yi,double xf,double yf);
void NewLine(double xi,double yi,double xf,double yf);
void NewBox(double xi,double yi,double xf,double yf);
void NewText(double xi,double yi,double xf,double yf);
void cleantext(char a[100]);

//结构体画图函数 
void DrawB(Box B);
void DrawColorB(Box B);
void DrawOval_(Figure *f);
void DrawLine_(Figure *f);
void DrawBox_(Figure *f);
void DrawText_(Figure *f);
void DrawDottedBox_(Figure *f);

//选中相关
Figure* isinzone(double x, double y);


























