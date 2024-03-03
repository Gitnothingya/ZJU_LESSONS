/*���ܼ�飺���Ϸ���ť����ѡ��ͼ��ģʽ�����ʡ�Ϊ��ʻ����ܣ�����ꡱ����ѡ�� ���Ҳ��ѡ����ɫ 
����ͼ�Σ���갴ס�϶����ɻ�ͼ��ѡ��ģʽ�£����ͼ���������ѡ�У��������߿�Ч����
�����ס�м������϶����������߽�С���οɵ�����С��delete��ɾ�� 
�����ı��򣬿������¼�������С��ͬ���ǵ�ס�϶���deleteɾ�� 
�����ж����ϸ����ƣ�ѡ��ģʽ�µ���հ���������ˡ� 
��Ա������Զ�����ϣ������ 
*/
#include "graphics.h"
#include "extgraph.h"
//#include "genlib.h"
//#include "simpio.h"
//#include "conio.h"
#include <stdio.h>
//#include <stdlib.h>
//#include <stddef.h>
#include <math.h> 
#include <windows.h>
//#include <olectl.h>
//#include <mmsystem.h>
//#include <wingdi.h>
//#include <ole2.h>
//#include <ocidl.h>
#include <winuser.h>

//#include "imgui.h"

#define TIMER_BLINK500  1
#define MaxFunctionNumber 6
#define MaxColorNumber 22
const int mseconds500 = 500;

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
	int layer;  //ͼ�㡢������������������������������������������������������������������������������ 
	Box *B;
	Line *L;
	Oval *O;
	TextRect *T;
	Box *zone;
	struct Figure* next;
	char *color;
}Figure;

bool isdown = FALSE;
int editmode=-1;
int count;
bool isconsole=TRUE;//�����ʾ���� 
bool isedit; //ȫ�ֱ�ʾ���ı��ڱ༭ 

Figure* figurelist;
Figure* head;
Figure* tail;
Figure* edition;
Figure* editiont;
Box editbutton[100];

int mode=1;
char *Colorplate[MaxColorNumber];
char *currentcolor;

//��ѧ 
double Max(double x, double y);
double Min(double x, double y);
int distance(double xi,double yi,double xf,double yf);  //������������ 


//��ť��� 
void isineditbutton(double x,double y); 
void DrawButton(void); 
bool isinbutton(double x,double y,Box b);  //�жϵ㣨x,y���Ƿ��ھ���b�� 
int isinfunctionbutton(double x,double y);  //�ж�x��y�Ƿ�λ�ں�����ť�� 
int isincolorbutton(double x,double y);  //�ж�x,y�Ƿ�λ����ɫ���ڰ�ť�� 
void DefineColor_(string name,double red,double green,double blue);  //ѡ����ɫ 
void switchcolor(double x,double y);  //�л���ɫ 
void givecolor(double x,double y);  //ȡɫ 

//����ʽ��ͼ���� 
void DrawBox(double xi,double yi,double xf,double yf);  //������ 
void DrawOval(double xi,double yi,double xf,double yf);  //����Բ 
void DrawDottedLine(double dx,double dy);  //������ 
void DrawDottedBox(double xi,double yi,double xf,double yf);  //�����߾��� 

// ��ʼ���뺯���ص� 
void Init_(void);
void DrawPen(void);  //����ʻ���ť 
void DrawMouse(void);  //��ѡ�а�ť 
void DrawMark(void);  //����ѡ�а�ť�ĶԹ� 
void DrawColorplate(void);  //����ɫ�� 
void Draw(void);  //����������Ļ�ϵ�����ͼ�� 
void MouseEventProcess(int x, int y, int button, int event);
void textcharprocess(char c);
void textkeyboardprocess(int key,int event);
void TimerEventProcess(int timerID);

//�½��ṹ��ڵ��������غ��� 
Figure* NewList(void);  //�½����� 
void deletefigure();  //ɾ��ѡ��ͼ�� 
void NewOval(double xi,double yi,double xf,double yf);  //�½���Բ 
void NewLine(double xi,double yi,double xf,double yf);  //�½�ֱ�� 
void NewBox(double xi,double yi,double xf,double yf);  //�½����� 
void NewText(double xi,double yi,double xf,double yf);  //�½��ı��� 
void cleantext(char a[100]);

//�ṹ�廭ͼ���������ݴ����ָ�뻭ͼ 
void DrawB(Box B);  
void DrawColorB(Box B);
void DrawOval_(Figure *f);
void DrawLine_(Figure *f);
void DrawBox_(Figure *f);
void DrawText_(Figure *f);
void DrawDottedBox_(Figure *f);

//ѡ��
Figure* isinzone(double x, double y); 


double Min(double x, double y)
{
    return ((x < y) ? x : y);
}

double Max(double x, double y)
{
    return ((x > y) ? x : y);
}

int distance(double xi,double yi,double xf,double yf)
{
	return (sqrt( pow(xi-xf,2) + pow(yi-yf,2) ));
}

void DrawPen(void)
{
	double x = 3.1,y = GetWindowHeight()-1.1;
	MovePen(x+0.16,y+0.16);
	DrawLine(0,0.16);
	DrawArc(0.04*sqrt(2),135,-180);
	DrawArc(0.04*sqrt(2),135,-180);
	DrawLine(-0.16,0);
	MovePen(x+0.32,y+0.16);
	DrawLine(0.48,0.48);
	DrawLine(-0.16,0.16);
	DrawLine(-0.48,-0.48);
	MovePen(x+0.8,y+0.64);
	DrawLine(0.1,0.1);
	DrawLine(-0.16,0.16);
	DrawLine(-0.1,-0.1);
	MovePen(x+0.24,y+0.24);
	DrawLine(0.48,0.48);
}

void DrawMouse(void)
{
	double x = 5.15,y = GetWindowHeight()-1.1;
	MovePen(x+0.3,y+0.8);
	DrawLine(0,-0.6);
	DrawLine(0.15,0.15);
	DrawLine(0.1,-0.2);
	DrawLine(0.08,0.05);
	DrawLine(-0.1,0.2);
	DrawLine(0.2,0);
	DrawLine(-0.43,0.4);
}

void DefineColor_(string name,double red,double green,double blue)
{
	DefineColor(name,red/255,green/255,blue/255);
}

void DrawButton(void)
{
	double y=GetWindowHeight()-0.1;
	int i;
	
	SetPenColor("WhiteSmoke");
	StartFilledRegion(1);
	DrawBox(0,y+0.1,GetWindowWidth(),y-1.1);
	EndFilledRegion();
	SetPenColor("Black");
	
	for(i=0;i<6;i++)
		DrawB(functionbutton[i]);
	
	SetPenSize(2);
	DrawOval(0.2,y-0.2,1,y-0.8);
	MovePen(1.2,y-0.2);DrawLine(0.8,-0.6);
	DrawBox(2.2,y-0.2,3.0,y-0.8);
	MovePen(4.35,y-0.65);SetPointSize(50);DrawTextString("��");SetPointSize(1);
	DrawPen();
	DrawMouse();
	SetPenSize(1);
	
	for(i=0;i<MaxColorNumber;i++)
	{
		DrawColorB(colorbutton[i]);
	}
	
	DrawMark();
}

bool isinbutton(double x,double y,Box b)
{
	return (x>=Min(b.xi,b.xf)&&x<=Max(b.xf,b.xi)&&y<=Max(b.yf,b.yi)&&y>=Min(b.yf,b.yi));
}

int isinfunctionbutton(double x,double y)
{
	if(y<=GetWindowHeight()-1.1) return 0;
	int i;
	for(i=0;i<MaxFunctionNumber;i++)
	{
		if(isinbutton(x,y,functionbutton[i])) return i+1;
	}
	return 0;
}

int isincolorbutton(double x,double y)
{
	if(y<=GetWindowHeight()-1.1) return -1;
	int i;
	for(i=0;i<MaxColorNumber;i++)
	{
		if(isinbutton(x,y,colorbutton[i])) 
		{
			return i;
		}
	}
	return -1;
}

void isineditbutton(double x,double y)
{
	int i = 0;
	for(i;i<8;i++)
	{
		if(isinbutton(x,y,editbutton[i]))
	    {
		    editmode = i;
		    return ;
	    }
	}
	return ;
}

void switchcolor(double x,double y)
{	
	if(isincolorbutton(x,y)>=0)
	{
		currentcolor = Colorplate[isincolorbutton(x,y)];
		Colorplate[0] = Colorplate[isincolorbutton(x,y)];
	}
		
}

void givecolor(double x,double y)
{
	if(isincolorbutton(x,y)>=11 && isincolorbutton(x,y)<=20)
	{
		Colorplate[isincolorbutton(x,y)] = currentcolor;
	}
}

void DrawMark(void)
{
	SetPenSize(3);
	SetPenColor("Green");
	MovePen(mode-1+0.75,GetWindowHeight()-0.1-0.8);
	DrawLine(0.1,-0.1);
	DrawLine(0.1,0.2);
	SetPenSize(1);
	SetPenColor(currentcolor);	
}

void DrawBox(double xi,double yi,double xf,double yf)
{
	MovePen(xi,yi);
	DrawLine(xf-xi,0);
	DrawLine(0,yf-yi);
	DrawLine(xi-xf,0);
	DrawLine(0,yi-yf);
}

void DrawOval(double xi,double yi,double xf,double yf)
{
	MovePen(xf,(yi+yf)/2);
	DrawEllipticalArc((xf-xi)/2,(yf-yi)/2,360,0);
}

void DrawDottedLine(double dx,double dy)
{
	double d = sqrt(dx*dx+dy*dy);
	int i;
	for(i=1;i<d/0.01;i++)
	{
		DrawLine(0.005/d*dx,0.005/d*dy);
		SetPenColor("White");
		DrawLine(0.005/d*dx,0.005/d*dy);
		SetPenColor("Black");
	}
}

void DrawDottedBox(double xi,double yi,double xf,double yf)
{
	MovePen(xi,yi);
	DrawDottedLine(xf-xi,0);
	DrawDottedLine(0,yf-yi);
	DrawDottedLine(xi-xf,0);
	DrawDottedLine(0,yi-yf);
}

void Draw()
{
	int n;
	Figure* f;
	
	f = figurelist;
	
	while(f != NULL)
	{
		switch(f->label)
		{
			case 1:
				DrawOval_(f);
				break;
			case 2:
				DrawLine_(f);
				break;
			case 3:
				DrawBox_(f);
				break;
			case 4:
				DrawText_(f);
				break;
			default:
				break;
		}
		f = f->next;
	}
	DrawButton();
}

void NewOval(double xi,double yi,double xf,double yf)
{
	Figure* f;
	f = (Figure*)malloc(sizeof(Figure));
	Oval* o;
	o=(Oval*)malloc(sizeof(Oval));
	f->O = o;
	Box* z;
	z=(Box*)malloc(sizeof(Box));
	
	f->zone = z;
	f->zone->xi = xi;
	f->zone->xf = xf;
	f->zone->yi = yi;
	f->zone->yf = yf;
	
	f->label = 1;
	f->O->x = (xi+xf)/2;
	f->O->y = (yi+yf)/2;
	f->O->a = (xf-xi)/2;
	f->O->b = (yf-yi)/2;
	f->color = currentcolor;
	
	if(count == 0)
	{
		figurelist = f;
		f->next = NULL;
	}
	else f->next = figurelist;
	figurelist = f;

	count ++;
}

void NewLine(double xi,double yi,double xf,double yf)
{
	Figure* f;
	f = (Figure*)malloc(sizeof(Figure));
	Line* l;
	l=(Line*)malloc(sizeof(Line));
	f->L = l;
	Box* z;
	z=(Box*)malloc(sizeof(Box));
	
	f->zone = z;
	f->zone->xi = xi;
	f->zone->xf = xf;
	f->zone->yi = yi;
	f->zone->yf = yf;
	
	f->label = 2;
	f->L->dx = xf-xi;
	f->L->dy = yf-yi;
	f->L->xi = xi;
	f->L->yi = yi;
	f->color = currentcolor;
	
	if(count == 0)
	{
		figurelist = f;
		f->next = NULL;
	}
	else f->next = figurelist;
	figurelist = f;

	count ++;
}

void NewBox(double xi,double yi,double xf,double yf)
{
	Figure* f;
	f = (Figure*)malloc(sizeof(Figure));
	Box* b;
	b=(Box*)malloc(sizeof(Box));
	f->B = b;
	Box* z;
	z=(Box*)malloc(sizeof(Box));
	
	f->zone = z;
	f->zone->xi = xi;
	f->zone->xf = xf;
	f->zone->yi = yi;
	f->zone->yf = yf;
	
	f->label = 3;
	f->B->xf = xf;
	f->B->yf = yf;
	f->B->xi = xi;
	f->B->yi = yi;
	f->color = currentcolor;
	
	if(count == 0)
	{
		figurelist = f;
		f->next = NULL;
	}
	else f->next = figurelist;
	figurelist = f;
	
	count ++;
}

void NewText(double xi,double yi,double xf,double yf)
{
	int i;
	Figure*  f;
	f = (Figure*)malloc(sizeof(Figure));
	TextRect *t;
	t=(TextRect*)malloc(sizeof(TextRect));
	f->T = t;
	Box* z;
	z=(Box*)malloc(sizeof(Box));
	
	f->zone = z;
	f->zone->xi = xi;
	f->zone->xf = xf;
	f->zone->yi = yi;
	f->zone->yf = yf;
	f->color = currentcolor;
	f->label = 4;
	f->T->TextR.xf = xf;
	f->T->TextR.yf = yf;
	f->T->TextR.xi = xi;
	f->T->TextR.yi = yi;
	f->T->len=0;//color? 
	f->T->edit=1;
	for(i=1;(GetFontHeight() < (( Max(yf,yi)-Min(yf,yi) )-0.1))&&i<100;i+=1){
		SetPointSize(i);
	}

	f->T->size=i;
	f->T->textx=Min(xi,xf)+0.05;
	f->T->texty=Min(yi,yf)+GetFontDescent();
	f->T->edit=1;
	
	cleantext(f->T->text);
	
	if(count == 0)
	{
		figurelist = f;
		f->next = NULL;
	}
	else f->next = figurelist;
	figurelist = f;
	
	count++;
}

void cleantext(char a[100])
{
	int i;
	for(i=0;i<100;i++)
	{
		a[i]='\0';
	}
}

void DrawB(Box B)
{
	DrawBox(B.xi,B.yi,B.xf,B.yf);
}

void DrawColorB(Box B)
{
	int i;
	double xi,yi,xf,yf;
	xi = B.xi+(B.xf-B.xi)*0.1;
	xf = B.xf-(B.xf-B.xi)*0.1;
	yi = B.yi+(B.yf-B.yi)*0.1;
	yf = B.yf-(B.yf-B.yi)*0.1;
	
	SetPenColor("White");
	StartFilledRegion(1);
	DrawB(B);
	EndFilledRegion();
	SetPenColor("Black");
	DrawB(B);
	
	SetPenColor(Colorplate[B.colorindex]);
	StartFilledRegion(1);
	DrawBox(xi,yi,xf,yf);
	EndFilledRegion();
}

void DrawOval_(Figure *f)
{
	SetPenColor(f->color);
	MovePen(f->O->x+f->O->a,f->O->y);
	DrawEllipticalArc(f->O->a,f->O->b,360,0);
}

void DrawLine_(Figure *f)
{
	MovePen(f->L->xi,f->L->yi);
	SetPenColor(f->color);
	DrawLine(f->L->dx,f->L->dy);
}

void DrawBox_(Figure *f)
{
	SetPenColor(f->color);
	DrawBox(f->B->xi,f->B->yi,f->B->xf,f->B->yf);
}

void DrawDottedBox_(Figure *f)
{
	if(f == NULL) return ;
	DrawDottedBox(f->zone->xi,f->zone->yi,f->zone->xf,f->zone->yf);
	double temp1 = Min(f->zone->xi,f->zone->xf),temp2 = Max(f->zone->xi,f->zone->xf),temp3 = Min(f->zone->yi,f->zone->yf),temp4 = Max(f->zone->yi,f->zone->yf);
	f->zone->xi = temp1;
	f->zone->xf = temp2;
	f->zone->yi = temp4;
	f->zone->yf = temp3;
	editbutton[0].xi = f->zone->xi+0.05;
	editbutton[0].yi = f->zone->yi;
	editbutton[0].xf = editbutton[0].xi-0.05;
	editbutton[0].yf = editbutton[0].yi-0.05;
	
	editbutton[2].xi = f->zone->xf;
	editbutton[2].yi = f->zone->yi;
	editbutton[2].xf = editbutton[2].xi-0.05;
	editbutton[2].yf = editbutton[2].yi-0.05;
	
	editbutton[4].xi = f->zone->xf;
	editbutton[4].yi = f->zone->yf+0.05;
	editbutton[4].xf = editbutton[4].xi-0.05;
	editbutton[4].yf = editbutton[4].yi-0.05;
	
	editbutton[6].xi = f->zone->xi+0.05;
	editbutton[6].yi = f->zone->yf+0.05;
	editbutton[6].xf = editbutton[6].xi-0.05;
	editbutton[6].yf = editbutton[6].yi-0.05;
	
	int i = 0;
	for(i;i<8;i++)DrawBox(editbutton[i].xi,editbutton[i].yi,editbutton[i].xf,editbutton[i].yf);
}

void DrawText_(Figure* f)
{
	MovePen(f->T->textx,f->T->texty);
	SetPenColor(f->color);
	SetPointSize(f->T->size);
	DrawTextString(f->T->text);
	if(f->T->edit) DrawBox(f->T->TextR.xf,f->T->TextR.yf,f->T->TextR.xi,f->T->TextR.yi);
}

Figure* NewList(void)
{
	Figure* l;
	l = (Figure*)malloc(sizeof(Figure));
	head = tail = l->next = NULL;
	return l;
}

void deletefigure()
{
	if(edition!=NULL){
		edition->label=-1;

	edition->zone->xi = 0;
	edition->zone->yi = 0;
	edition->zone->xf = 0;
	edition->zone->yf = 0;
	
	edition = NULL;
	}

	if(editiont!=NULL){
		editiont->label=-1;	
		editiont->zone->xi = 0;
		editiont->zone->yi = 0;
		editiont->zone->xf = 0;
		editiont->zone->yf = 0;
		editiont->T=NULL;

		isedit=0;
		editiont=NULL;
	}
}

Figure* isinzone(double x, double y)
{
	Figure *f;
	f = figurelist;

	while(f != NULL)
	{
				 		/*OpenConsole();
			int i;
			printf("%d\n",f->label);
			scanf("%d",&i);
			CloseConsole();*/
		if((f->zone->xi-x)*(f->zone->xf-x)<=0 
		 && (f->zone->yi-y)*(f->zone->yf-y)<=0 &&f->label!=4&&f->label!=-1)
		 {
		 	edition = f;

		 	if(isedit&&editiont){
			  	editiont->T->edit=0;
		 	 	editiont=NULL;
		 	 	isedit=0;
			}

			return f;
		 }
		 else if((f->zone->xi-x)*(f->zone->xf-x)<=0 
		 && (f->zone->yi-y)*(f->zone->yf-y)<=0 &&f->label==4&&f->label!=-1)
		 {
		 	if(editiont)editiont->T->edit=0;
		 	editiont = f;
		 	editmode=-1;
		 	edition=NULL;
		 	editiont->T->edit=1;
		 	DisplayClear();
			Draw();
			isedit=1;
			startTimer(TIMER_BLINK500, mseconds500);
			return f;
		 }
		f = f->next;
	}

}

void Init_()
{
	double ym = GetWindowHeight();
	double xm = GetWindowWidth();
	int i,j,count;
	
	for(i=0;i<MaxColorNumber;i++)
		Colorplate[i] = (char*)malloc(sizeof(char));
	
	Colorplate[0] = "Black";
	Colorplate[1] = "Dark Gray";
	Colorplate[2] = "Gray";
	Colorplate[3] = "Light Gray";
	Colorplate[4] = "White";
	Colorplate[5] = "Red";
	Colorplate[6] = "Yellow";
	Colorplate[7] = "Green";
	Colorplate[8] = "Cyan";
	Colorplate[9] = "Blue";
	Colorplate[10] = "Magenta";
	for(i=11;i<MaxColorNumber;i++)
		Colorplate[i] = "White";
	DefineColor_("WhiteSmoke",245,245,245);
	currentcolor = "Black";
	
	for(i=0;i<MaxFunctionNumber;i++)
	{
		functionbutton[i].xi = 0.1+i;
		functionbutton[i].yi = -0.1+ym;
		functionbutton[i].xf = 1.1+i;
		functionbutton[i].yf = -1.1+ym;
	}
	
	i=1;
	for(j=0;j<2;j++)
	{
		for(count=0;i<MaxColorNumber&&count<10;i++,count++)
		{
			colorbutton[i].xi = xm-6+0.5*count;
			colorbutton[i].yi = ym-0.1-0.5*j;
			colorbutton[i].xf = xm-6+0.5*(count+1);
			colorbutton[i].yf = ym-0.6-0.5*j;
			colorbutton[i].colorindex = i;
		}
	}
	
	
	colorbutton[0].xi = xm-6.9;
	colorbutton[0].yi = ym-0.2;
	colorbutton[0].xf = xm-6.1;
	colorbutton[0].yf = ym-1;
	colorbutton[0].colorindex = 0;
	
	colorbutton[21].xi = xm-0.9;
	colorbutton[21].yi = ym-0.2;
	colorbutton[21].xf = xm-0.1;
	colorbutton[21].yf = ym-1;
	colorbutton[21].colorindex = 21;
	
	DrawButton();
}

void MouseEventProcess(int x, int y, int button, int event)
{
	Figure* f;
	double mouse_x, mouse_y;
 	mouse_x = ScaleXInches(x);
 	mouse_y = ScaleYInches(y);
 	static double ex, ey;
 	static bool positionC= FALSE,sizeC= FALSE;//�ı�λ�����С�ı��־ 
 	static double omx,omy;
 	if(isdown == FALSE)
 	{
 		ex=mouse_x;
		ey=mouse_y;
 	}
 	
 	if(isdown == FALSE)
 	{
 		isinfunctionbutton(mouse_x,mouse_y);
 	}
 	if(event!=BUTTON_DOWN&&isdown == FALSE)return ;
 	switch(event)//��ť 
 	{
 		case BUTTON_DOWN:
 			mode = (isinfunctionbutton(mouse_x,mouse_y)?isinfunctionbutton(mouse_x,mouse_y):mode);
 			if(button == LEFT_BUTTON) switchcolor(ex,ey);
 			else if(button == RIGHT_BUTTON) givecolor(ex,ey);
 			DisplayClear();
 			Draw();
 			break;
 		case BUTTON_UP:
 			
 		case MOUSEMOVE:
 			DrawButton();
 			break;
 	}
 	
 	if(ey<=GetWindowHeight()-1.1)
	switch(mode)//��ͼ 
 	{
 		case 1://Oval
 			if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;isedit=0;}
 			switch(event)
		 	{
		 		case BUTTON_DOWN:
				    isdown = TRUE;
				    break;
				case BUTTON_UP:
					NewOval(ex,ey,mouse_x,mouse_y);
					isdown = FALSE;
					break;
				case MOUSEMOVE:
					if(isdown)
					{
						DisplayClear();
						Draw();
						DrawOval(ex,ey,mouse_x,mouse_y);
					}
					break;
				default:
					break;
		 	}
		 	break;
 		case 2://Line
 			if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;isedit=0;}
 			switch(event)
 			{
 				case BUTTON_DOWN:
				    isdown = TRUE;
				    break;
				case BUTTON_UP:
					NewLine(ex,ey,mouse_x,mouse_y);
					isdown = FALSE;
					break;
				case MOUSEMOVE:
					if(isdown)
					{
						DisplayClear();
						Draw();
						MovePen(ex,ey);
						DrawLine(mouse_x-ex,mouse_y-ey);
					}
					break;
				default:
					break;
 			}
 			break;
 		case 3://Box
 			if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;isedit=0;}
 			switch(event)
 			{
 				case BUTTON_DOWN:
				    isdown = TRUE;
				    break;
				case BUTTON_UP:
					NewBox(ex,ey,mouse_x,mouse_y);
					isdown = FALSE;
					break;
				case MOUSEMOVE:
					if(isdown)
					{
						DisplayClear();
						Draw();
						DrawBox(ex,ey,mouse_x,mouse_y);
					}
					break;
				default:
					break;
 			}
 			break;
 		case 4://pen
 			if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;isedit=0;}
 			switch(event)
 			{
 				case BUTTON_DOWN:
   					isdown = TRUE;
    				break;
    			case BUTTON_UP:
					isdown = FALSE;
    				break;
    			case MOUSEMOVE:
    				if(isdown)
					{
						DisplayClear();
						Draw();
						MovePen(mouse_x,mouse_y);
						DrawLine(mouse_x-ex,mouse_y-ey);
						NewLine(ex,ey,mouse_x,mouse_y);
 					}
 					break;
 			}
 			ex=mouse_x;
 			ey=mouse_y;
 			break;
 		case 5:
 			switch(event)
 			{
 				case BUTTON_DOWN:
 					isdown = TRUE;
				    break;
 				case BUTTON_UP:
 					if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;}
 					if((Max(ey,mouse_y)-Min(ey,mouse_y))<=1.6) NewText(ex,ey,mouse_x,mouse_y);
					else NewText(ex,ey,mouse_x,(ey+(((mouse_y-ey)>0)?1.6:(-1.6))) );
					DisplayClear();
					Draw();
					editiont=figurelist;
					isedit=1;
					startTimer(TIMER_BLINK500, mseconds500);
					isdown = FALSE;
					break;
 				case MOUSEMOVE:
 					if(isdown)
					{
						DisplayClear();
						Draw();
						if((Max(ey,mouse_y)-Min(ey,mouse_y))<=1.6)DrawBox(ex,ey,mouse_x,mouse_y);
						else DrawBox(ex,ey,mouse_x,ey+((mouse_y-ey)>0?1.6:(-1.6)));
					}
					break;
				default:
					break;
			}
 			break;
 		case 6:
 			switch(event)
 			{
 				case BUTTON_DOWN:
 					isdown = TRUE;
 					f = isinzone(ex,ey);
 					if(f->label!=4)DrawDottedBox_(f);
 					if(editiont){
 						if(isinbutton(mouse_x,mouse_y,editiont->T->TextR)){
 							if(button==LEFT_BUTTON)positionC=TRUE;
 							//if(button==RIGHT_BUTTON)sizeC=TRUE;
						 }
						 if(button==RIGHT_BUTTON)sizeC=TRUE;
						 omx=mouse_x;omy=mouse_y;
					 }
					isineditbutton(mouse_x,mouse_y);
 					break;
 				case BUTTON_UP:
 					isdown = FALSE;
 					editmode = -1;
 					if(editiont){
 						positionC=FALSE;
 						sizeC=FALSE;
					 }
 					break;
 				case MOUSEMOVE:
 					if(editiont){
 						if(positionC){
 							editiont->T->textx+=(mouse_x-omx);
 							editiont->T->texty+=(mouse_y-omy);
 							editiont->T->TextR.xf+=(mouse_x-omx);
 							editiont->T->TextR.xi+=(mouse_x-omx);
 							editiont->T->TextR.yf+=(mouse_y-omy);
 							editiont->T->TextR.yi+=(mouse_y-omy);
 							editiont->zone->xf+=(mouse_x-omx);
 							editiont->zone->xi+=(mouse_x-omx);
 							editiont->zone->yf+=(mouse_y-omy);
 							editiont->zone->yi+=(mouse_y-omy);
 							omx=mouse_x;omy=mouse_y;
 							DisplayClear();
                        	Draw();
                            return ;
						 }
						 if(sizeC){
						 	//δ��ɹ��� 
						 	return ;
						 }
					 }
 					if(isdown&&(edition!=NULL)&&editmode>=0)
 					{
 						switch(edition->label)
                        {
                            case 1:
                            	switch(editmode)
                            	{
                            		case 0:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->O->x = (edition->zone->xf+edition->zone->xi)/2;
                                        edition->O->y = (edition->zone->yf+edition->zone->yi)/2;
                      		            edition->O->a = (edition->zone->xf-edition->zone->xi)/2;
                      		            edition->O->b = (edition->zone->yf-edition->zone->yi)/2;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 2:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->O->x = (edition->zone->xf+edition->zone->xi)/2;
                                        edition->O->y = (edition->zone->yf+edition->zone->yi)/2;
                      		            edition->O->a = (edition->zone->xf-edition->zone->xi)/2;
                      		            edition->O->b = (edition->zone->yf-edition->zone->yi)/2;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 4:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->O->x = (edition->zone->xf+edition->zone->xi)/2;
                                        edition->O->y = (edition->zone->yf+edition->zone->yi)/2;
                      		            edition->O->a = (edition->zone->xf-edition->zone->xi)/2;
                      		            edition->O->b = (edition->zone->yf-edition->zone->yi)/2;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 6:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->O->x = (edition->zone->xf+edition->zone->xi)/2;
                                        edition->O->y = (edition->zone->yf+edition->zone->yi)/2;
                      		            edition->O->a = (edition->zone->xf-edition->zone->xi)/2;
                      		            edition->O->b = (edition->zone->yf-edition->zone->yi)/2;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;	
                                      
                            	}
							    break;
							case 2:
                            	switch(editmode)
                            	{
                            		case 0:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->L->xi = edition->zone->xi;
                                        edition->L->yi = edition->zone->yi;
                      		            edition->L->dx = edition->zone->xf-edition->zone->xi;
                      		            edition->L->dy = edition->zone->yf-edition->zone->yi;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 2:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->L->xi = edition->zone->xi;
                                        edition->L->yi = edition->zone->yi;
                      		            edition->L->dx = edition->zone->xf-edition->zone->xi;
                      		            edition->L->dy = edition->zone->yf-edition->zone->yi;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 4:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->L->xi = edition->zone->xi;
                                        edition->L->yi = edition->zone->yi;
                      		            edition->L->dx = edition->zone->xf-edition->zone->xi;
                      		            edition->L->dy = edition->zone->yf-edition->zone->yi;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 6:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->L->xi = edition->zone->xi;
                                        edition->L->yi = edition->zone->yi;
                      		            edition->L->dx = edition->zone->xf-edition->zone->xi;
                      		            edition->L->dy = edition->zone->yf-edition->zone->yi;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;	
                            	}
							    break;
							case 3:
                            	switch(editmode)
                            	{
                            		case 0:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->B->xi = edition->zone->xi;
                                        edition->B->yi = edition->zone->yi;
                      		            edition->B->xf = edition->zone->xf;
                      		            edition->B->yf = edition->zone->yf;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 2:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yi = mouse_y;
                                        edition->B->xi = edition->zone->xi;
                                        edition->B->yi = edition->zone->yi;
                      		            edition->B->xf = edition->zone->xf;
                      		            edition->B->yf = edition->zone->yf;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 4:
                            		    edition->zone->xf = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->B->xi = edition->zone->xi;
                                        edition->B->yi = edition->zone->yi;
                      		            edition->B->xf = edition->zone->xf;
                      		            edition->B->yf = edition->zone->yf;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                                    case 6:
                            		    edition->zone->xi = mouse_x;
                                        edition->zone->yf = mouse_y;
                                        edition->B->xi = edition->zone->xi;
                                        edition->B->yi = edition->zone->yi;
                      		            edition->B->xf = edition->zone->xf;
                      		            edition->B->yf = edition->zone->yf;
                                        DisplayClear();
                                        Draw();
                                        DrawDottedBox_(edition);
                                        break;
                            	}
							    break;
                        }
       				}
       				else if(isdown&&(edition!=NULL)&&editmode==-1&&isinbutton(mouse_x,mouse_y,*(edition->zone)))
       				{
       					double dx0 = mouse_x-ex;
       					double dy0 = mouse_y-ey;
       					ex = mouse_x;
       					ey = mouse_y;
						switch(edition->label)
       					{
       						case 1:
       							edition->O->x+=dx0;
       							edition->O->y+=dy0;
       							edition->zone->xi+=dx0;
       							edition->zone->yi+=dy0;
       							edition->zone->xf+=dx0;
       							edition->zone->yf+=dy0;
       							DisplayClear();
       							Draw();
       							DrawDottedBox_(edition);
       							break;
       						case 2:
       							edition->L->xi+=dx0;
       							edition->L->yi+=dy0;
								edition->zone->xi+=dx0;
       							edition->zone->yi+=dy0;
       							edition->zone->xf+=dx0;
       							edition->zone->yf+=dy0;
       							DisplayClear();
       							Draw();
       							DrawDottedBox_(edition);
       							break;
       						case 3:
       							edition->B->xi+=dx0;
       							edition->B->yi+=dy0;
       							edition->B->xf+=dx0;
       							edition->B->yf+=dy0;
       							edition->zone->xi+=dx0;
       							edition->zone->yi+=dy0;
       							edition->zone->xf+=dx0;
       							edition->zone->yf+=dy0;
       							DisplayClear();
       							Draw();
       							DrawDottedBox_(edition);
       							break;
       					}
       				}else edition = NULL;
       			if(isedit) {editiont->T->edit=0;cancelTimer(TIMER_BLINK500);editiont=NULL;isedit=0;}
       			break;
 			}
 			break;
 	}
}

void textcharprocess(char c)
{
	int i;
	if(isedit&&(editiont->T->edit&&editiont)){
		switch (c) {
    		case '\r':  // ע�⣺�س������ﷵ�ص��ַ���'\r'������'\n'
   	 		   	break;
 			case 27: //ESC
 	   	    	break;
 	   		 case '\b'://BackSpace
			 	break;
			case 46:
				break; 
    		default:
    			MovePen(editiont->T->textx,editiont->T->texty);//���õ�ǰ�༭�ı������� 
    			SetEraseMode(TRUE); 
    			SetPointSize(editiont->T->size);
	 		   	DrawTextString(editiont->T->text); //����Ŀ��Ԫ���ı� 
	 		   	
	 		   	MovePen(TextStringWidth(editiont->T->text)+(editiont->T->textx),(editiont->T->texty)-GetFontDescent()-0.04);
			  	DrawLine(0,GetFontHeight());//�������޹�꣬�������������
			  	
	 		   	(editiont->T->text)[(editiont->T->len)++] = c;//��ʱ���������ı����ƶ���꣬ע�������Ϊ�ṹ���ڲ�Ԫ�� 
	 		   	(editiont->T->text)[(editiont->T->len)] = '\0';
	 		   	
    			MovePen(editiont->T->textx,editiont->T->texty);//�����ı���ʾ��ʼ����
    			SetEraseMode(FALSE); //ȡ������ģʽ
	 		   	DrawTextString(editiont->T->text); //��ʾ��ǰ�ַ���
	 		   	break;
    	}
	}
}

void textkeyboardprocess(int key,int event)
{


		switch (event)
		{
			case KEY_DOWN:
				switch (key)
				{
					case VK_UP://Ŀǰѡ���ı��������С+5��ע��100���ޣ���ʱˢ�� 
						if(editiont->T->size<100)editiont->T->size+=5;
						DisplayClear();
       							Draw();
						break;
					case VK_DOWN:
						if(editiont->T->size>0)editiont->T->size-=5;
						DisplayClear();
       							Draw();
						break;
					case VK_ESCAPE:
						if(editiont!=NULL){
							editiont->T->edit=0;
							isedit=0;
							editiont=NULL;
							DisplayClear();
							Draw();
						}
						 //Ŀǰѡ���ı����edit��0�����˳��༭ģʽ 
						break;
					case VK_BACK:
						MovePen(editiont->T->textx,editiont->T->texty);//�ṹ��Ԫ�� 
			    		SetEraseMode(TRUE); //���ò���ģʽ
				 	   	SetPointSize(editiont->T->size);
	 		   			DrawTextString(editiont->T->text); //������ǰ�ַ���
				 	   	
				 	   	MovePen(TextStringWidth(editiont->T->text)+(editiont->T->textx),(editiont->T->texty)-GetFontDescent()-0.04);
						DrawLine(0,GetFontHeight());//�������޹�꣬�������������
				  		
				 	   	if((editiont->T->len) > 0 && (editiont->T->text)[(editiont->T->len)-1]<0)
							{(editiont->T->len)--;(editiont->T->text)[(editiont->T->len)]='\0';} //ɾ���� 
				 	   	if ((editiont->T->len) > 0) (editiont->T->len)--; //����һ���ַ�
				 	   	
				 	   	(editiont->T->text)[(editiont->T->len)] = '\0';//��β��־
							 
			    		MovePen(editiont->T->textx,editiont->T->texty);
			    		SetEraseMode(FALSE);
				 	   	DrawTextString(editiont->T->text); //��ʾ��ǰ�ַ���  	
						break;	
					case VK_DELETE://ɾ������ 
						if(edition!=NULL)
						{
							deletefigure();
						}
						if(editiont!=NULL){
							deletefigure();
						}
						DisplayClear();
						Draw();
						break;
				}
				break;
			case KEY_UP:
				break;
		}
	
}

void TimerEventProcess(int timerID)
{
	bool erasemode;
	if(isedit&&editiont->T->edit) 
	{
	
		switch (timerID)
		{
			case TIMER_BLINK500://���ı���ѡ���У����ı�������˸ 
	    		erasemode = GetEraseMode();
	    		SetEraseMode(isconsole);
	    	
        	  	MovePen(TextStringWidth(editiont->T->text)+(editiont->T->textx),(editiont->T->texty)-GetFontDescent()-0.04);
        	  	SetPointSize(editiont->T->size);
		  		DrawLine(0,GetFontHeight());
		  	
	    	  	SetEraseMode(erasemode);
		 	 	isconsole = !isconsole;
			
				break;
			default:
				break;
		}
	}
}

void Main()
{
	InitGraphics();
	
	figurelist = NewList();
	Init_();
	
	registerMouseEvent(MouseEventProcess);
	registerCharEvent(textcharprocess);
	registerKeyboardEvent(textkeyboardprocess);
	registerTimerEvent(TimerEventProcess);
}

