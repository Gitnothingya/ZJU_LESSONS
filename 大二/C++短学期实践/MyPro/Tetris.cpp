#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <conio.h>
#include <windows.h>
#include <stdint.h>
#include <stdbool.h>

#define x_begin 2
#define x_end 14
#define y_begin 4
#define y_end 26

static const uint16_t TetrisForms[7][4] =//7种方块4种放置模式 
{
	{ 0x00F0U, 0x2222U, 0x00F0U, 0x2222U },
	{ 0x0072U, 0x0262U, 0x0270U, 0x0232U }, 
	{ 0x0223U, 0x0074U, 0x0622U, 0x0170U }, 
	{ 0x0226U, 0x0470U, 0x0322U, 0x0071U },  
	{ 0x0063U, 0x0264U, 0x0063U, 0x0264U }, 
	{ 0x006CU, 0x0462U, 0x006CU, 0x0462U }, 
	{ 0x0660U, 0x0660U, 0x0660U, 0x0660U } 
}; 

static const uint16_t InitialTetrisPool[28] =//按行确定游戏池空间 
{
 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U,
 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U,
 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U,
 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xC003U, 0xFFFFU, 0xFFFFU
};

typedef struct TetrisManager
{
	uint16_t pool[28];
	int8_t x;
	int8_t y;
	int8_t type[4];
	int8_t orientation[3];//旋转状态 
	unsigned eraselines;//消除总行数 
	unsigned score;//消除总分数 
	bool dead;
	int canhold;
	int firsthold;
	int times;
	int seed[7];
}TetrisManager;

typedef struct TetrisController
{
	bool pause; // 暂停
	// bool clockwise; // 旋转方向：顺时针为true
	int8_t direction; // 移动方向：0向左移动 1向右移动
	int8_t color[28][16];
}TetrisController;

HANDLE g_hConsoleOutput;//定义句柄变量 

void initgame(TetrisManager *manager, TetrisController *controller);
void goto_xy(short x,short y);
void PrintHelpInfo(TetrisManager *manager, TetrisController *controller);
void PrintScore(TetrisManager *manager, TetrisController *controller);
void restartgame(TetrisManager *manager, TetrisController *controller);
void PrintPoolBorder(); 
void giveTetris(TetrisManager *manager); // 给一个方块
void setPoolColor(TetrisManager *manager, TetrisController *controller); // 设置颜色
void insertTetris(TetrisManager *manager); 
void printTetrisPool(const TetrisManager *manager, const TetrisController *control);
void removeTetris(TetrisManager *manager);
void printCurrentTetris(const TetrisManager *manager, const TetrisController *control);
void printNextTetris(const TetrisManager *manager);
void runGame(TetrisManager *manager, TetrisController *control);
bool Collide(const TetrisManager *manager);
bool YouDied(); 
void keydownControl(TetrisManager *manager,TetrisController *control, int key);
void horzmoveTetris(TetrisManager *manager,TetrisController *control); // 水平移动
void moveDownTetris(TetrisManager *manager,TetrisController *control); // 向下移动
void spinTetris(TetrisManager *manager,TetrisController *control);//旋转
void harddropTetris(TetrisManager *manager,TetrisController *control);//硬降

void holdTetris(TetrisManager *manager,TetrisController *control);//hold
void giveTetris_hold(TetrisManager *manager);//给一个方块_hold
void printholdTetris(TetrisManager *manager);//打印hold方块 
void printholdframe(TetrisManager *manager);//在第一次hold前要先把框子打印出来 
bool Erazed(TetrisManager * manager, TetrisController * controller); 
void tetrseed(int *a);//每7块1包 生成一包随机数种子 
int random(TetrisManager *manager);//每7块一包  
void welcome();

int main()
{
	welcome();
	
	TetrisManager manager;
	TetrisController controller;

	initgame(&manager,&controller);
	while(1){
		PrintScore(&manager,&controller);
		PrintHelpInfo(&manager,&controller);
		PrintPoolBorder();
		runGame(&manager,&controller);
		if(YouDied())
		{
			SetConsoleTextAttribute(g_hConsoleOutput, 0x7);
  			system("cls"); // 清屏
  			restartgame(&manager, &controller);
		}else break;
	}
	CloseHandle(g_hConsoleOutput);
 	return 0;
}

void runGame(TetrisManager *manager, TetrisController *control)
{
 clock_t clockLast, clockNow;//用于计时（使得俄罗斯方块按一定的时间周期刷新） 
 
 clockLast = clock(); // 计时  clock（）函数的单位为毫秒 
 printTetrisPool(manager, control); // 显示游戏池
 
 while (!manager->dead) // 没挂
 {
 while (_kbhit()) // 有键按下
 {
  keydownControl(manager, control, _getch()); // 处理按键
 }
 
 if (!control->pause) // 未暂停
 {
  clockNow = clock(); // 计时
  // 两次记时的间隔超过0.45秒
  if (clockNow - clockLast > 0.45F * CLOCKS_PER_SEC)//CLOCKS_PER_SEC是按秒计算 
  {
  clockLast = clockNow;
  keydownControl(manager, control, 80); // 方块往下移
  }
 }
 }
}

void initgame(TetrisManager *manager, TetrisController *controller)
{
	CONSOLE_CURSOR_INFO cursorinfo = {1,0};//设置光标信息（隐藏） 
	g_hConsoleOutput = GetStdHandle(STD_OUTPUT_HANDLE);//获得控制台输出句柄 
	SetConsoleTitleA("A6组俄罗斯方块"); 
	SetConsoleCursorInfo(g_hConsoleOutput,&cursorinfo); //设置隐藏光标 
	restartgame(manager,controller);
}

void PrintScore(TetrisManager *manager, TetrisController *controller)
{
	SetConsoleTextAttribute(g_hConsoleOutput,0x0b);
	goto_xy(2,2);
	printf("■得分：%u",manager -> score);
	goto_xy(2,6);
	printf("■已消行数：%u",manager -> eraselines);
}

void goto_xy(short x,short y)
{
	static COORD location;
	location.X = (short)(x<<1);
	location.Y = y;
	SetConsoleCursorPosition(g_hConsoleOutput,location);
}

void PrintHelpInfo(TetrisManager *manager, TetrisController *controller)
{
	SetConsoleTextAttribute(g_hConsoleOutput,0x0b);
	goto_xy(26,15);
	printf("■控制：");
	goto_xy(27,16);
	printf("■旋转方块：W 或 ↑");
	goto_xy(27,17);
	printf("■向左移动：A 或 ←");
	goto_xy(27,18);
	printf("■向右移动：D 或 →");
	goto_xy(27,19);
	printf("■向下移动：S 或 ↓");
	goto_xy(27,20);
	printf("■直接落地：Space");
	goto_xy(27,21);
	printf("■暂存方块：Q ");
	goto_xy(27,22);
	printf("■暂停：P");
	goto_xy(27,23);
	printf("■制作成员：吴嘉俊，殷信楠");
	goto_xy(33,24);	
	printf("余靖航，颜晗");
}

void PrintPoolBorder()
{
	int8_t y;
	SetConsoleTextAttribute(g_hConsoleOutput,0xf0); 
	for(y=y_begin;y<y_end;y++)
	{
		goto_xy(10,y-3);
		printf("%2s","");
		goto_xy(23,y-3);
		printf("%2s","");
	} 
	goto_xy(10, y - 3); // 底部边界
 	printf("%28s","");
}
#define gotoxyInPool(x, y) goto_xy(x + 9, y - 3)

// 显示游戏池
void printTetrisPool(const TetrisManager *manager, const TetrisController *control)
{
 	int8_t x, y;
 
 	for (y = y_begin; y < y_end; ++y) // 不显示顶部4行和底部2行
 	{
 	gotoxyInPool(2, y); // 定点到游戏池中的方格
 	for (x = x_begin; x < x_end; ++x) // 不显示左右边界
 		{
  		if ((manager->pool[y] >> x) & 1) // 游戏池该方格有方块
  			{
  			// 用相应颜色，显示一个实心方块
  			SetConsoleTextAttribute(g_hConsoleOutput, control->color[y][x]);
  			printf("■");
  			}
  		else // 没有方块，显示空白
  			{
  			SetConsoleTextAttribute(g_hConsoleOutput, 0);
  			printf("%2s", "");
  			}
 		}
 	}
}

void restartgame(TetrisManager *manager, TetrisController *controller)
{
	tetrseed(manager->seed);
	manager->times = 0;//初始化种子
	
	memset(manager,0,sizeof(TetrisManager));//初始化manager，controller等结构体 
	memset(controller,0,sizeof(TetrisController));
	memcpy(manager -> pool,InitialTetrisPool,sizeof(uint16_t [28])) ;
	srand((unsigned)time(NULL));
	
	tetrseed(manager->seed);
	manager->times = 0;//初始化种子
	
	manager->type[1] = random(manager) ;
	manager->type[2] = random(manager) ;	
	manager->orientation[1] = rand() % 3;
	manager->orientation[2] = rand() % 3;
	giveTetris(manager); // 给下一个方块
 	setPoolColor(manager, controller); // 设置颜色
 	printholdframe(manager);
 	manager->canhold = 1;
	manager->firsthold = 1;

}

void giveTetris(TetrisManager *manager) // 给一个方块
{
	uint16_t tetris;
 
 	manager->type[0] = manager->type[1]; // 下一个方块置为当前
	manager->orientation[0] = manager->orientation[1];
 
 	manager->type[1] = manager->type[2];// 下下一个置方块为下一个
 	manager->orientation[1] = manager->orientation[2];
 
 	manager->type[2] = random(manager);// 随机生成下下一个方块
 	manager->orientation[2] = rand() & 3;
 
 	tetris = TetrisForms[manager->type[0]][manager->orientation[0]]; // 当前方块
 
 // 设置当前方块y坐标，保证刚给出时只显示方块最下面一行
 // 这种实现使得玩家可以以很快的速度将方块落在不显示出来的顶部4行内
 	if (tetris & 0xF000){
 	manager->y = 0;
 	}
 	else{
 	manager->y = (tetris & 0xFF00) ? 1 : 2;
 	}
 	manager->x = 6; // 设置当前方块x坐标
 
 	if (Collide(manager)) // 检测到碰撞
 	manager->dead = true; // 标记游戏结束
 	else // 未检测到碰撞
 	insertTetris(manager); // 将当前方块加入游戏池
 
 	printNextTetris(manager); // 显示下一个方块
 	//printScore(manager); // 显示得分信息
 	
 	manager->canhold = 1;
}
void setPoolColor(TetrisManager *manager, TetrisController *controller)// 设置颜色
{
 	int8_t i, x, y;
 
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];// 当前方块
 
 	for (i = 0; i < 16; ++i){
 		
 		y = (i >> 2) + manager->y; // 待设置的列
 		if (y > y_end) // 超过底部限制
  			break;
 		x = (i & 3) + manager->x; // 待设置的行
 		if ((tetris >> i) & 1) // 检测的到小方格属于当前方块区域
  			controller->color[y][x] = (manager->type[0] | 8); // 设置颜色
 	}
}
void insertTetris(TetrisManager *manager)//插入方块 
{
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];// 当前方块
 
 	// 当前方块每4位取出，位或到游戏池相应位置，即完成插入方块
 	manager->pool[manager->y + 0] |= (((tetris >> 0x0) & 0x000F) << manager->x);
 	manager->pool[manager->y + 1] |= (((tetris >> 0x4) & 0x000F) << manager->x);
 	manager->pool[manager->y + 2] |= (((tetris >> 0x8) & 0x000F) << manager->x);
	manager->pool[manager->y + 3] |= (((tetris >> 0xC) & 0x000F) << manager->x);
}  

void removeTetris(TetrisManager *manager)
{
	// 当前方块
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];
 
 	// 当前方块每4位取出，按位取反后位与到游戏池相应位置，即完成移除方块
 	manager->pool[manager->y + 0] &= ~(((tetris >> 0x0) & 0x000F) << manager->x);
 	manager->pool[manager->y + 1] &= ~(((tetris >> 0x4) & 0x000F) << manager->x);
 	manager->pool[manager->y + 2] &= ~(((tetris >> 0x8) & 0x000F) << manager->x);
	manager->pool[manager->y + 3] &= ~(((tetris >> 0xC) & 0x000F) << manager->x);
}

void printCurrentTetris(const TetrisManager *manager, const TetrisController *control)
{
	int8_t x, y;
 
 	// 显示当前方块是在移动后调用的，为擦去移动前的方块，需要扩展显示区域
 	// 由于不可能向上移动，故不需要向下扩展
 	y = (manager->y > y_begin) ? (manager->y - 1) : y_begin; // 向上扩展一格
 	for (; y < y_end && y < manager->y + 4; ++y)
	{
 		x = (manager->x > x_begin) ? (manager->x - 1) : x_begin; // 向左扩展一格
 		for (; x < x_end && x < manager->x + 5; ++x) // 向右扩展一格
 		{
  			gotoxyInPool(x, y); // 定点到游戏池中的方格
  			if ((manager->pool[y] >> x) & 1) // 游戏池该方格有方块
  			{
  			SetConsoleTextAttribute(g_hConsoleOutput, control->color[y][x]);// 用相应颜色，显示一个实心方块
  			printf("■");
  			}
  			else
  			{
  			SetConsoleTextAttribute(g_hConsoleOutput, 0);// 没有方块，显示空白
  			printf("%2s", "");
  			}
 		}
 	}
}

void printNextTetris(const TetrisManager *manager)
{
	int8_t i;
 	uint16_t tetris;
 
 	// 显示预备方块的边框
 	SetConsoleTextAttribute(g_hConsoleOutput, 0xF);
 	goto_xy(26, 1);
 	printf("┏━━━━━━━━━┳━━━━━━━━━┓");
 	goto_xy(26, 2);
 	printf("┃%9s┃%9s┃", "", "");
 	goto_xy(26, 3);
 	printf("┃%9s┃%9s┃", "", "");
 	goto_xy(26, 4);
 	printf("┃%9s┃%9s┃", "", "");
 	goto_xy(26, 5);
 	printf("┃%9s┃%9s┃", "", "");
 	goto_xy(26, 6);
 	printf("┗━━━━━━━━━┻━━━━━━━━━┛");
 	goto_xy(26, 7);
 	printf("    next ");
 
 	// 下一个，用相应颜色显示
 	tetris = TetrisForms[manager->type[1]][manager->orientation[1]];
 	SetConsoleTextAttribute(g_hConsoleOutput, manager->type[1] | 8);
 	for (i = 0; i < 16; ++i)
 	{
 	goto_xy((i & 3) + 27, (i >> 2) + 2);
 	((tetris >> i) & 1) ? printf("■") : printf("%2s", "");
 	}
 
 	// 下下一个
 	tetris = TetrisForms[manager->type[2]][manager->orientation[2]];
 	SetConsoleTextAttribute(g_hConsoleOutput,manager->type[2] | 8);
 	for (i = 0; i < 16; ++i)
 	{
 	goto_xy((i & 3) + 32, (i >> 2) + 2);
 	((tetris >> i) & 1) ? printf("■") : printf("%2s", "");
 	}
}

void keydownControl(TetrisManager *manager, TetrisController *control, int key)
{
	if (key == 'p') control->pause = !control->pause;
	
	if (control->pause) return ;
	
	switch(key)
	{
		case('a'): case('A'): case(75):
			control->direction = 0;
			horzmoveTetris(manager,control);
			break; 
		case('d'): case('D'): case(77):
			control->direction = 1;
			horzmoveTetris(manager,control);
			break;
		case('s'): case('S'): case(80):
			moveDownTetris(manager,control); 
			break;
		case('w'): case('W'): case(72):
			spinTetris(manager,control);
			break;
		case(' '):
			harddropTetris(manager,control);
			break;
		case('q'): case('Q'):
			holdTetris(manager,control);
			break;
		default:
			break;
	}
} 

bool YouDied()
{
	int ch;
 
 SetConsoleTextAttribute(g_hConsoleOutput, 0xF0);
 goto_xy(15, 10);
 printf("You Died");
 goto_xy(13, 11);
 printf("按R/remake，按F/ff");
 
 do
 {
 ch = _getch();
 if (ch == 'R' || ch == 'r')
 {
  return true;
 }
 else if (ch == 'F' || ch == 'f')
 {
 	SetConsoleTextAttribute(g_hConsoleOutput, 0xFc);
 	goto_xy(15, 12);
	 printf("Git Gud, Bro"); 
  return false;
 }
 } while (1);
}

bool Collide(const TetrisManager *manager)
{
	int x;
 // 当前方块
 uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];
 uint16_t dest = 0;
 
 // 获取当前方块在游戏池中的区域：
 // 游戏池坐标x y处小方格信息，按低到高存放在16位无符号数中
 dest |= (((manager->pool[manager->y + 0] >> manager->x) << 0x0) & 0x000F);
 dest |= (((manager->pool[manager->y + 1] >> manager->x) << 0x4) & 0x00F0);
 dest |= (((manager->pool[manager->y + 2] >> manager->x) << 0x8) & 0x0F00);
 dest |= (((manager->pool[manager->y + 3] >> manager->x) << 0xC) & 0xF000);
 
 // 若当前方块与目标区域存在重叠（碰撞），则位与的结果不为0
 if((dest & tetris) != 0)
 {
 	return 1;
 }
 else return 0;
}





//================================================================
//向下移动 
void moveDownTetris(TetrisManager *manager, TetrisController *control)
{
	int j, k;
 int8_t y = manager->y; // 记录原行位置
 
 removeTetris(manager); // 移走当前方块
 ++manager->y; // 向下移动
 
 if (Collide(manager)) // 检测到碰撞
 {
 manager->y = y; // 恢复为原行位置
 insertTetris(manager); // 放入当前方块。由于位置没改变，不需要设置颜色
 printCurrentTetris(manager,control);
 if (Erazed(manager, control)) // 检测到消行
 {
  printTetrisPool(manager, control); // 显示游戏池
 }
 }
 else
 {
 insertTetris(manager); // 放入当前方块
printTetrisPool(manager,control);
 setPoolColor(manager, control); // 设置颜色
 printCurrentTetris(manager, control); // 显示当前方块
 }
}
 
//=============================================================
// 水平移动
void horzmoveTetris(TetrisManager *manager, TetrisController *control)
{
	int x = manager->x;
	
	removeTetris(manager);
	control->direction == 0 ? (--manager->x) : (++manager->x);
	
	if (Collide(manager)) // 检测到碰撞
	{
		manager->x = x; // 恢复为原列位置
		insertTetris(manager); // 放入当前方块。由于位置没改变，不需要设置颜色
	}else{
		insertTetris(manager); // 放入当前方块
		setPoolColor(manager, control); // 设置颜色
		printCurrentTetris(manager, control); // 显示当前方块
	}
}
//===============================================================
//旋转 
void spinTetris(TetrisManager *manager,TetrisController *control)
{
	int8_t ori = manager->orientation[0];
	removeTetris(manager);
	manager->orientation[0] = (ori + 1) % 4;
	
	if (Collide(manager)) // 检测到碰撞
	{
	manager->orientation[0] = ori; // 恢复为原旋转状态
	insertTetris(manager); // 放入当前方块。由于状态没改变，不需要设置颜色
	}else{
	insertTetris(manager); // 放入当前方块
	setPoolColor(manager, control); // 设置颜色
	printCurrentTetris(manager, control); // 显示当前方块
	}
}
//=============================================================================
//硬降 
void harddropTetris(TetrisManager *manager,TetrisController *control)
{
	removeTetris(manager); // 移走当前方块
	for ( ;manager->y < y_end;++manager->y) // 从上往下
	{
		if (Collide(manager)) break;// 检测到碰撞
	}
	--manager->y;
	insertTetris(manager); // 放入当前方块
	setPoolColor(manager, control); // 设置颜色

	Erazed(manager, control); // 检测消行
	printTetrisPool(manager, control); // 显示游戏池
}
//=============================================================================
//hold
void holdTetris(TetrisManager *manager,TetrisController *control)
{
	if(manager->canhold)
	{
		removeTetris(manager);
		giveTetris_hold(manager);
		
		printholdTetris(manager);
		printTetrisPool(manager, control); // 显示游戏池
		
		manager->canhold = 0;
	}
}

void giveTetris_hold(TetrisManager *manager) // 给一个方块_hold
{
	uint16_t tetris;
	int8_t temp;

	if(manager->firsthold){

	manager->type[3] = manager->type[0];

	manager->type[0] = manager->type[1]; // 下一个方块置为当前
	manager->orientation[0] = manager->orientation[1];

	manager->type[1] = manager->type[2];// 下下一个置方块为下一个
	manager->orientation[1] = manager->orientation[2];

	manager->type[2] = random(manager);// 随机生成下下一个方块
	manager->orientation[2] = rand() & 3;

	manager->firsthold=0;
	}else{
	temp = manager->type[0];
	manager->type[0] = manager->type[3];
	manager->type[3] = temp;	
	}
 
	tetris = TetrisForms[manager->type[0]][manager->orientation[0]]; // 当前方块
 
	if (tetris & 0xF000)
	{
	manager->y = 0;
	}
	else
	{
	manager->y = (tetris & 0xFF00) ? 1 : 2;
	}
	manager->x = 6; // 设置当前方块x坐标

	if (Collide(manager)) // 检测到碰撞
	{
	manager->dead = true; // 标记游戏结束
	}
	else // 未检测到碰撞
	{
	insertTetris(manager); // 将当前方块加入游戏池
	}

	printNextTetris(manager); // 显示下一个方块
}

void printholdTetris(TetrisManager *manager)
{
	int8_t i;
	uint16_t tetris;

	tetris = TetrisForms[manager->type[3]][manager->orientation[3]];
	SetConsoleTextAttribute(g_hConsoleOutput, manager->type[3] | 8);
	for (i = 0; i < 16; ++i)
	{
	goto_xy((i & 3) + 27, (i >> 2) + 9);
	((tetris >> i) & 1) ? printf("■") : printf("%2s", "");
	}
}

void printholdframe(TetrisManager *manager)//在第一次hold前要先把框子打印出来 
{
	SetConsoleTextAttribute(g_hConsoleOutput, 0xF);
 	goto_xy(26, 8);
	printf("┏━━━━━━━━━┓");
	goto_xy(26, 9);
	printf("┃%9s┃", "");
	goto_xy(26, 10);
	printf("┃%9s┃", "");
	goto_xy(26, 11);
	printf("┃%9s┃", "");
	goto_xy(26, 12);
	printf("┃%9s┃", "");
	goto_xy(26, 13);
	printf("┗━━━━━━━━━┛");
	goto_xy(26, 14);
	printf("    hold ");
}

void tetrseed(int *a)
{
	int i,j;
	srand((unsigned)time(0));
	a[0]=rand()%7;
	for(i=1;i<7;i++)
	{
		a[i]=rand()%7;
		for(j=0;j<i;j++)
		{
			if(a[i]==a[j])
			{
				i--;
			}
		}
	}
}
int random(TetrisManager *manager)
{
	if(manager->times==7)
	{
		manager->times = 0;
		tetrseed(manager->seed);
	}
	
	return(manager->seed[manager->times++]);
}

bool Erazed(TetrisManager * manager, TetrisController * controller)
{
	int i,j,k,n, swap, count=0,y ;
	y= manager->y+5;
	for(i=0;i<y_end;i++)
	{
		if(manager->pool[i]==0xFFFFU)
		{
		count++;
		memmove(manager->pool + 1, manager->pool, sizeof(uint16_t) * i);
  		memmove(controller->color[1], controller->color[0], sizeof(int8_t [16]) * i);
		} 
		else 
		{
			;
		}
	}
	manager->eraselines+=count;
	manager->score += count*y;
	PrintScore(manager, controller);
	giveTetris(manager);
	setPoolColor(manager, controller); // 设置颜色
	if(count >0)
	{ 
	return 1;
	}
	else return 0;
}
void welcome()
{
	printf("Welcome to Tetris game by A6.\n");
 	
	printf("\nGood luck and have fun!\n");

	printf("\nPress any key to start game.\n");
	
	getch();
	
	system("cls");
}

