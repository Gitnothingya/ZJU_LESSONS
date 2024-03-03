#ifndef _mygraphics_h
#define _mygraphics_h

#include <stdio.h>
#include <stdlib.h>

#define maxtextlen 100
typedef struct Point{  //点 
	double x,y;
}Point;

typedef struct Rect{  //矩形 
	Point RectO;  //开始绘制矩形的那一点的坐标 
	double width,height;
}Rect;

typedef struct Line{  //直线 
	Point p1;
	Point p2;
	/*double linelen;
	double lineangel;*/
	Rect LineR;
}Line;

typedef struct Oval{  //椭圆 
	Point OvalO;  //椭圆中心坐标 
	double ra,rb;
	Rect OvalR;
}Oval;

typedef struct TextRect{  //文本框 
	Point TextO;
	char text[maxtextlen];
	Rect TextR;
}TextRect;

typedef struct Fig{  //图形元素节点 
	int label;  //label==1,节点元素为矩形，label==2,节点元素为直线，labek==3,节点元素为椭圆，label==4 节点元素为文本框 
	Rect *R;
	Line *L;
	Oval *O;
	TextRect *T;
	struct Fig *prev;
	struct Fig *next;
}Fig;

#endif













