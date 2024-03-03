#ifndef _mygraphics_h
#define _mygraphics_h

#include <stdio.h>
#include <stdlib.h>

#define maxtextlen 100
typedef struct Point{  //�� 
	double x,y;
}Point;

typedef struct Rect{  //���� 
	Point RectO;  //��ʼ���ƾ��ε���һ������� 
	double width,height;
}Rect;

typedef struct Line{  //ֱ�� 
	Point p1;
	Point p2;
	/*double linelen;
	double lineangel;*/
	Rect LineR;
}Line;

typedef struct Oval{  //��Բ 
	Point OvalO;  //��Բ�������� 
	double ra,rb;
	Rect OvalR;
}Oval;

typedef struct TextRect{  //�ı��� 
	Point TextO;
	char text[maxtextlen];
	Rect TextR;
}TextRect;

typedef struct Fig{  //ͼ��Ԫ�ؽڵ� 
	int label;  //label==1,�ڵ�Ԫ��Ϊ���Σ�label==2,�ڵ�Ԫ��Ϊֱ�ߣ�labek==3,�ڵ�Ԫ��Ϊ��Բ��label==4 �ڵ�Ԫ��Ϊ�ı��� 
	Rect *R;
	Line *L;
	Oval *O;
	TextRect *T;
	struct Fig *prev;
	struct Fig *next;
}Fig;

#endif













