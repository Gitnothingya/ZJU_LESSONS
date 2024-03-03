#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <math.h> 
#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>
#include "imgui.h"
#include "mygraphics.h"

#define maxtextlen 100

/*typedef struct Point{  //点 
	double x,y;
}Point;

typedef struct Rect{  //矩形 
	Point RectO;  //开始绘制矩形的那一点的坐标 
	double width,height;
}Rect;

typedef struct Line{  //直线 
	Point p1;
	Point p2;
	//double linelen;
	//double lineangel;
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
}Fig;*/

static double winwidth,winheight;
static bool EraseMode = FALSE;

int Max(int a,int b)
{
	if(a>b)return a;
	else return b;
}

int Min(int a,int b)
{
	if(a<b)return a;
	else return b;
}

Fig *NewFig()
{
    Fig *f = (Fig*)malloc(sizeof(Fig));
    f->label = 0; 
    f->R = NULL;
    f->L = NULL;
    f->O = NULL;
    f->T = NULL;
    f->prev = NULL;
    f->next = NULL;
}

Fig *DrawALine(Point point1,Point point2)
{
	Fig *l = NewFig();
	Line *L1 = (Line*)malloc(sizeof(Line));
	l->label = 2;
	l->L = L1;
	
	L1->p1.x = point1.x;
	L1->p1.y = point1.y;
	L1->p2.x = point2.x;
	L1->p2.y = point2.y;
	L1->LineR.RectO.x = point1.x; 
	L1->LineR.RectO.y = point1.y;
	L1->LineR.width = point2.x-point1.x;
	L1->LineR.height = point2.y-point1.y;
	
	MovePen(point1.x,point1.y);
	SetEraseMode(EraseMode);
	DrawLine(point2.x-point1.x,point2.y-point1.y);
	
	return l;
} 

Fig *DrawARect(Rect r0) 
{
	Fig *r = NewFig();
	Rect *R1 = (Rect*)malloc(sizeof(Rect));
	r->label = 1;
	r->R = R1;
	
    R1->RectO.x = r0.RectO.x;
    R1->RectO.y = r0.RectO.y;
    R1->width = r0.width;
    R1->height = r0.height;
    
	MovePen(R1->RectO.x,R1->RectO.y);
	SetEraseMode(EraseMode);
	DrawLine(r0.width,0);
	DrawLine(0,r0.height);
	DrawLine(-r0.width,0);
	DrawLine(0,-r0.height);
	
	return r;
}

Fig *DrawAOVal(Point O,double ra,double rb)
{
	Fig *o = NewFig();
	Oval *O1 = (Oval*)malloc(sizeof(Oval));
	o->label = 3;
	o->O = O1;
	
	O1->OvalO.x = O.x;
	O1->OvalO.y = O.y;
	O1->ra = ra;
	O1->rb = rb;
	O1->OvalR.RectO.x = O.x-ra;
	O1->OvalR.RectO.y = O.y+rb;
	O1->OvalR.width = 2*ra;
	O1->OvalR.height = 2*rb;
	
	MovePen(O.x,O.y);
	DrawEllipticalArc(ra,rb,0,360);
	
	return o;
}

Fig *DrawATextRect(Point O,char textT[maxtextlen])
{
	
}

void UpdateFigNode(Fig *Old,Fig *New)
{
	if(Old->prev!=NULL)Old->prev->next = New;
	if(Old->next!=NULL)Old->next->prev = New;
	if(Old->prev!=NULL)New->prev = Old->prev;
	if(Old->next!=NULL)New->next = Old->next;
	free(Old);
}

int inRect(Point p,Rect r)
{
    return (p.x>=Min(r.RectO.x+r.width,r.RectO.x)&&p.x<=Max(r.RectO.x+r.width,r.RectO.x)&&p.y<=Min(r.RectO.y+r.height,r.RectO.y)&&p.y<=Max(r.RectO.y+r.height,r.RectO.y));
}

void Main()
{
	SetWindowTitle("My CAD");
	InitGraphics();
	winwidth = GetWindowWidth();
    winheight = GetWindowHeight();
	/*
	registerCharEvent(CharEventProcess);        // 字符
	registerKeyboardEvent(KeyboardEventProcess);// 键盘
	registerMouseEvent(MouseEventProcess);      // 鼠标*/
}

