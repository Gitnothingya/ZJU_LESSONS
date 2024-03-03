//===========================================================================
//
//  ��Ȩ�����ߣ� ���¹����㽭��ѧ�������ѧ�뼼��ѧԺ
//                       CAD&CG�����ص�ʵ����
//               xgliu@cad.zju.edu.cn
//  ����޸ģ�2020��3��25�� 
//  ���δ�����2020��3��21�գ�����<<�������ר��>>�γ̽�ѧ
//
//===========================================================================

/**************************************************************

1. ����������ʱ�����ֱ����ͼ�ε�λ��

***************************************************************/

#include "graphics.h"
#include "extgraph.h"
#include "genlib.h"
#include "simpio.h"
#include "conio.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>
#include <windows.h>
#include <olectl.h>
#include <mmsystem.h>
#include <wingdi.h>
#include <ole2.h>
#include <ocidl.h>
#include <winuser.h>

double box_x = 1.0;
double box_y = 1.0;
double label_x = 1.0;
double label_y = 1.0;

void display()
{
	double w = 1.0;
	double h = GetFontHeight() * 2;
	// �����Ļ
	DisplayClear();
	// draw a square
	SetPenColor("Red");
	drawLabel(label_x, label_y, "Lable is Here");
	// ȡ�������ע�ͣ�draw ����Ķ���
	drawRectangle(box_x, box_y + h*1.2, w, h, 0);
	SetPenColor("Red"); drawBox(box_x, box_y + h*1.2, w, h, 0, "Box is here", 'c', "Green");
	SetPenColor("Blue"); drawBox(box_x, box_y, w, h, 1, "Filled Box is here", 'c', "Green");
}

typedef enum {
	LabelTimer,
	BoxTimer,
} MyTimer;

void mytimer(int  timerID)
{
	switch (timerID)
	{
	case LabelTimer:
		label_x += 0.5;
		if (label_x > GetWindowWidth()) 
			label_x = 1.0;
		display();
		break;
	case BoxTimer:
		box_y += 0.5;
		if (box_y > GetWindowHeight()) box_y = 1.0;
		display();
		break;
		break;
	}
}


void Main()
{
	InitGraphics();

	registerTimerEvent(mytimer);
	startTimer(LabelTimer, 100);
	startTimer(BoxTimer, 200);

	//display();
}
