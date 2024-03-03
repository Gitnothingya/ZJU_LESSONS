//===========================================================================
//
//  版权所有者： 刘新国，浙江大学计算机科学与技术学院
//                       CAD&CG国家重点实验室
//               xgliu@cad.zju.edu.cn
//  最近修改：2020年3月25日 
//  初次创建：2020年3月21日，用于<<程序设计专题>>课程教学
//
//===========================================================================

/**************************************************************

1. 开启两个定时器，分别控制图形的位置

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
	// 清除屏幕
	DisplayClear();
	// draw a square
	SetPenColor("Red");
	drawLabel(label_x, label_y, "Lable is Here");
	// 取消下面的注释，draw 更多的东西
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
