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
#define maxtextlen 100
#define Linebutton 1
#define Rectbutton 2
#define Ovalbutton 3
#define Textbutton 4

typedef struct Point{  //点
	double x;
	double y;
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
	int id;  //图形节点唯一序列号 
	Rect *R;
	Line *L;
	Oval *O;
	TextRect *T;
	struct Fig *prev;
	struct Fig *next;
}Fig;

typedef struct linklist{
	Fig *head;
	Fig *tail;
}linklist;

int Max(int a,int b);
int Min(int a,int b);
int inRect(Point p,Rect r);
int inMenu(Point p);
void DrawEditButton(Rect r);
void SwitchEditMode(Point p);
Fig *DrawALine(Point point1,Point point2);
void DrawARect(Rect r0);
Fig *DrawAOval(Point O,double ra,double rb);
Fig *DrawATextRect(Point O,char textT[maxtextlen]);
void MouseEventProcess(int x, int y, int button, int event);
void drawbutton(void);
Fig *NewFig();
void EnFig(Fig *f);
void UpdateFigNode(Fig *Old,Fig *New);
int SearchFigRect(linklist *L,Point p);

static bool EraseMode = FALSE;
static bool isediting = FALSE;
static bool isdrawing = FALSE;
static bool readytodraw = FALSE; 
static bool startmove = FALSE;
int EditMode;  //=1左右调整，=2上下调整，=3整体放大缩小 
int drawmode;
int editid;
int Figid = 1;
static double winwidth,winheight;
Point *StartPoint;
Rect Editbutton[8];
linklist *Figlist;

Rect LineButtonRect;
Rect RectButtonRect;
Rect OvalButtonRect;
Rect TextButtonRect;

static char * menuListFile[] = {"File", "Open  | Ctrl-O", "Close","Exit   | Ctrl-E"};
static char * menuListTool[] = {"Tool","Line","Oval","Text","Rectangle"};
static char * menuListHelp[] = {"Help","Show More  | Ctrl-M","About"};
static char * selectedLabel = NULL;
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
    f->id = Figid++;
    return f;
}
void EnFig(Fig *f)
{
	Figlist->tail->next = f;
	f->prev = Figlist->tail;
	Figlist->tail = f;
} 
void UpdateFigNode(Fig *Old,Fig *New)
{
	if(Old->prev!=NULL)Old->prev->next = New;
	if(Old->next!=NULL)Old->next->prev = New;
	if(Old->prev!=NULL)New->prev = Old->prev;
	if(Old->next!=NULL)New->next = Old->next;
	free(Old);
}
int SearchFigRect(linklist *L,Point p)  //判断p的位置是否在Figlist中元素所具有的矩形框里，如果在，返回该元素的唯一编号 
{
	Fig *temp = L->tail;
	while(temp->prev!=NULL)
	{
		switch(temp->label)
		{
			case 1:  //如果当前节点存储的元素是矩形 
				if(inRect(p,*(temp->R)))return temp->id;
				break;
			case 2:  //是直线 
			    if(inRect(p,temp->L->LineR))return temp->id;
				break;
			case 3:  //是椭圆 
			    if(inRect(p,temp->O->OvalR))return temp->id;
				break;
			case 4:  //是文本 
			    if(inRect(p,temp->T->TextR))return temp->id;
			    break;
		}
	}
	return 0;
}
Fig *SearchFigid(int searchid)
{
	Fig *temp;
	while(temp->next!=NULL)
	{
		if(temp->id==searchid)return temp;
	}
	return NULL;
} 
void DrawARect(Rect r0) 
{
	/*
	Fig *r = NewFig();
	Rect *R1 = (Rect*)malloc(sizeof(Rect));
	r->label = 1;
	r->R = R1;
	
    R1->RectO.x = r0.RectO.x;
    R1->RectO.y = r0.RectO.y;
    R1->width = r0.width;
    R1->height = r0.height;
    */
	MovePen(r0.RectO.x,r0.RectO.y);
	SetEraseMode(EraseMode);
	DrawLine(r0.width,0);
	DrawLine(0,r0.height);
	DrawLine(-r0.width,0);
	DrawLine(0,-r0.height);
	
	//return r;
}
void drawbutton(void)
{
	LineButtonRect.RectO.x = 0;
    LineButtonRect.RectO.y = winheight-1.5*GetFontHeight();
    LineButtonRect.height = 1.5*GetFontHeight();
    LineButtonRect.width = TextStringWidth("Line")+0.2;
    
    RectButtonRect.RectO.x = LineButtonRect.width;
    RectButtonRect.RectO.y = winheight-1.5*GetFontHeight();
    RectButtonRect.height = 1.5*GetFontHeight();
    RectButtonRect.width = TextStringWidth("Rectagle")+0.2;
    
    OvalButtonRect.RectO.x = LineButtonRect.width+RectButtonRect.width;
    OvalButtonRect.RectO.y = winheight-1.5*GetFontHeight();
    OvalButtonRect.height = 1.5*GetFontHeight();
    OvalButtonRect.width = TextStringWidth("Oval")+0.2;
    
    TextButtonRect.RectO.x = LineButtonRect.width+RectButtonRect.width+OvalButtonRect.width;
    TextButtonRect.RectO.y = winheight-1.5*GetFontHeight();
    TextButtonRect.height = 1.5*GetFontHeight();
    TextButtonRect.width = TextStringWidth("Text")+0.2;
    
    DrawARect(LineButtonRect);
    DrawARect(RectButtonRect);
	DrawARect(OvalButtonRect);
	DrawARect(TextButtonRect);
}

int inMenu(Point p)
{
	if(inRect(p,LineButtonRect))return Linebutton;
	if(inRect(p,RectButtonRect))return Rectbutton;
	if(inRect(p,OvalButtonRect))return Ovalbutton;
	if(inRect(p,TextButtonRect))return Textbutton;
	return 0;
}
int inRect(Point p,Rect r)
{
    return (p.x>=Min(r.RectO.x+r.width,r.RectO.x)&&p.x<=Max(r.RectO.x+r.width,r.RectO.x)&&p.y<=Min(r.RectO.y+r.height,r.RectO.y)&&p.y<=Max(r.RectO.y+r.height,r.RectO.y));
}
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
void MouseEventProcess(int x, int y, int button, int event)
{
	double mx,my;
	mx = ScaleXInches(x);
    my = ScaleYInches(y);
    Point mouseposition;
    mouseposition.x = mx;
    mouseposition.y = my;
    drawmode = inMenu(mouseposition);
    int edit = SearchFigRect(Figlist,mouseposition);
    
    switch(event)
    {
    	case BUTTON_DOWN:
    		if(button==LEFT_BUTTON)
    		{
                if(drawmode>0)  //如果点在了按钮上 
                {
                	readytodraw = TRUE;
                	isdrawing = FALSE;
                	EraseMode = TRUE;
                	switch(drawmode)
                	{
                		case Linebutton:
                			DrawARect(LineButtonRect);
							SetPenColor("Blue");
                			EraseMode = FALSE;
                			DrawARect(LineButtonRect);
                			break;
                		case Rectbutton:
                			DrawARect(RectButtonRect);
							SetPenColor("Blue");
                			EraseMode = FALSE;
                			DrawARect(RectButtonRect);
                			break;
                		case Ovalbutton:
                			DrawARect(OvalButtonRect);
							SetPenColor("Blue");
                			EraseMode = FALSE;
                			DrawARect(OvalButtonRect);
                			break;
                		case Textbutton:
                		    DrawARect(TextButtonRect);
							SetPenColor("Blue");
                			EraseMode = FALSE;
                			DrawARect(TextButtonRect);
                			break;
                	}
                }
            }
        case BUTTON_UP:
        	break;
        case MOUSEMOVE:
        	break;
        	
    }
            
            
}
void Main()
{
	Figlist=(linklist*)malloc(sizeof(linklist));
	SetWindowTitle("My CAD");
	InitGraphics();
	winwidth = GetWindowWidth();
    winheight = GetWindowHeight();
    
    
	registerMouseEvent(MouseEventProcess);      // 鼠标*/
}
