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

static const uint16_t TetrisForms[7][4] =//7�ַ���4�ַ���ģʽ 
{
	{ 0x00F0U, 0x2222U, 0x00F0U, 0x2222U },
	{ 0x0072U, 0x0262U, 0x0270U, 0x0232U }, 
	{ 0x0223U, 0x0074U, 0x0622U, 0x0170U }, 
	{ 0x0226U, 0x0470U, 0x0322U, 0x0071U },  
	{ 0x0063U, 0x0264U, 0x0063U, 0x0264U }, 
	{ 0x006CU, 0x0462U, 0x006CU, 0x0462U }, 
	{ 0x0660U, 0x0660U, 0x0660U, 0x0660U } 
}; 

static const uint16_t InitialTetrisPool[28] =//����ȷ����Ϸ�ؿռ� 
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
	int8_t orientation[3];//��ת״̬ 
	unsigned eraselines;//���������� 
	unsigned score;//�����ܷ��� 
	bool dead;
	int canhold;
	int firsthold;
	int times;
	int seed[7];
}TetrisManager;

typedef struct TetrisController
{
	bool pause; // ��ͣ
	// bool clockwise; // ��ת����˳ʱ��Ϊtrue
	int8_t direction; // �ƶ�����0�����ƶ� 1�����ƶ�
	int8_t color[28][16];
}TetrisController;

HANDLE g_hConsoleOutput;//���������� 

void initgame(TetrisManager *manager, TetrisController *controller);
void goto_xy(short x,short y);
void PrintHelpInfo(TetrisManager *manager, TetrisController *controller);
void PrintScore(TetrisManager *manager, TetrisController *controller);
void restartgame(TetrisManager *manager, TetrisController *controller);
void PrintPoolBorder(); 
void giveTetris(TetrisManager *manager); // ��һ������
void setPoolColor(TetrisManager *manager, TetrisController *controller); // ������ɫ
void insertTetris(TetrisManager *manager); 
void printTetrisPool(const TetrisManager *manager, const TetrisController *control);
void removeTetris(TetrisManager *manager);
void printCurrentTetris(const TetrisManager *manager, const TetrisController *control);
void printNextTetris(const TetrisManager *manager);
void runGame(TetrisManager *manager, TetrisController *control);
bool Collide(const TetrisManager *manager);
bool YouDied(); 
void keydownControl(TetrisManager *manager,TetrisController *control, int key);
void horzmoveTetris(TetrisManager *manager,TetrisController *control); // ˮƽ�ƶ�
void moveDownTetris(TetrisManager *manager,TetrisController *control); // �����ƶ�
void spinTetris(TetrisManager *manager,TetrisController *control);//��ת
void harddropTetris(TetrisManager *manager,TetrisController *control);//Ӳ��

void holdTetris(TetrisManager *manager,TetrisController *control);//hold
void giveTetris_hold(TetrisManager *manager);//��һ������_hold
void printholdTetris(TetrisManager *manager);//��ӡhold���� 
void printholdframe(TetrisManager *manager);//�ڵ�һ��holdǰҪ�Ȱѿ��Ӵ�ӡ���� 
bool Erazed(TetrisManager * manager, TetrisController * controller); 
void tetrseed(int *a);//ÿ7��1�� ����һ����������� 
int random(TetrisManager *manager);//ÿ7��һ��  
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
  			system("cls"); // ����
  			restartgame(&manager, &controller);
		}else break;
	}
	CloseHandle(g_hConsoleOutput);
 	return 0;
}

void runGame(TetrisManager *manager, TetrisController *control)
{
 clock_t clockLast, clockNow;//���ڼ�ʱ��ʹ�ö���˹���鰴һ����ʱ������ˢ�£� 
 
 clockLast = clock(); // ��ʱ  clock���������ĵ�λΪ���� 
 printTetrisPool(manager, control); // ��ʾ��Ϸ��
 
 while (!manager->dead) // û��
 {
 while (_kbhit()) // �м�����
 {
  keydownControl(manager, control, _getch()); // ������
 }
 
 if (!control->pause) // δ��ͣ
 {
  clockNow = clock(); // ��ʱ
  // ���μ�ʱ�ļ������0.45��
  if (clockNow - clockLast > 0.45F * CLOCKS_PER_SEC)//CLOCKS_PER_SEC�ǰ������ 
  {
  clockLast = clockNow;
  keydownControl(manager, control, 80); // ����������
  }
 }
 }
}

void initgame(TetrisManager *manager, TetrisController *controller)
{
	CONSOLE_CURSOR_INFO cursorinfo = {1,0};//���ù����Ϣ�����أ� 
	g_hConsoleOutput = GetStdHandle(STD_OUTPUT_HANDLE);//��ÿ���̨������ 
	SetConsoleTitleA("A6�����˹����"); 
	SetConsoleCursorInfo(g_hConsoleOutput,&cursorinfo); //�������ع�� 
	restartgame(manager,controller);
}

void PrintScore(TetrisManager *manager, TetrisController *controller)
{
	SetConsoleTextAttribute(g_hConsoleOutput,0x0b);
	goto_xy(2,2);
	printf("���÷֣�%u",manager -> score);
	goto_xy(2,6);
	printf("������������%u",manager -> eraselines);
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
	printf("�����ƣ�");
	goto_xy(27,16);
	printf("����ת���飺W �� ��");
	goto_xy(27,17);
	printf("�������ƶ���A �� ��");
	goto_xy(27,18);
	printf("�������ƶ���D �� ��");
	goto_xy(27,19);
	printf("�������ƶ���S �� ��");
	goto_xy(27,20);
	printf("��ֱ����أ�Space");
	goto_xy(27,21);
	printf("���ݴ淽�飺Q ");
	goto_xy(27,22);
	printf("����ͣ��P");
	goto_xy(27,23);
	printf("��������Ա����ο��������");
	goto_xy(33,24);	
	printf("�ྸ��������");
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
	goto_xy(10, y - 3); // �ײ��߽�
 	printf("%28s","");
}
#define gotoxyInPool(x, y) goto_xy(x + 9, y - 3)

// ��ʾ��Ϸ��
void printTetrisPool(const TetrisManager *manager, const TetrisController *control)
{
 	int8_t x, y;
 
 	for (y = y_begin; y < y_end; ++y) // ����ʾ����4�к͵ײ�2��
 	{
 	gotoxyInPool(2, y); // ���㵽��Ϸ���еķ���
 	for (x = x_begin; x < x_end; ++x) // ����ʾ���ұ߽�
 		{
  		if ((manager->pool[y] >> x) & 1) // ��Ϸ�ظ÷����з���
  			{
  			// ����Ӧ��ɫ����ʾһ��ʵ�ķ���
  			SetConsoleTextAttribute(g_hConsoleOutput, control->color[y][x]);
  			printf("��");
  			}
  		else // û�з��飬��ʾ�հ�
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
	manager->times = 0;//��ʼ������
	
	memset(manager,0,sizeof(TetrisManager));//��ʼ��manager��controller�Ƚṹ�� 
	memset(controller,0,sizeof(TetrisController));
	memcpy(manager -> pool,InitialTetrisPool,sizeof(uint16_t [28])) ;
	srand((unsigned)time(NULL));
	
	tetrseed(manager->seed);
	manager->times = 0;//��ʼ������
	
	manager->type[1] = random(manager) ;
	manager->type[2] = random(manager) ;	
	manager->orientation[1] = rand() % 3;
	manager->orientation[2] = rand() % 3;
	giveTetris(manager); // ����һ������
 	setPoolColor(manager, controller); // ������ɫ
 	printholdframe(manager);
 	manager->canhold = 1;
	manager->firsthold = 1;

}

void giveTetris(TetrisManager *manager) // ��һ������
{
	uint16_t tetris;
 
 	manager->type[0] = manager->type[1]; // ��һ��������Ϊ��ǰ
	manager->orientation[0] = manager->orientation[1];
 
 	manager->type[1] = manager->type[2];// ����һ���÷���Ϊ��һ��
 	manager->orientation[1] = manager->orientation[2];
 
 	manager->type[2] = random(manager);// �����������һ������
 	manager->orientation[2] = rand() & 3;
 
 	tetris = TetrisForms[manager->type[0]][manager->orientation[0]]; // ��ǰ����
 
 // ���õ�ǰ����y���꣬��֤�ո���ʱֻ��ʾ����������һ��
 // ����ʵ��ʹ����ҿ����Ժܿ���ٶȽ��������ڲ���ʾ�����Ķ���4����
 	if (tetris & 0xF000){
 	manager->y = 0;
 	}
 	else{
 	manager->y = (tetris & 0xFF00) ? 1 : 2;
 	}
 	manager->x = 6; // ���õ�ǰ����x����
 
 	if (Collide(manager)) // ��⵽��ײ
 	manager->dead = true; // �����Ϸ����
 	else // δ��⵽��ײ
 	insertTetris(manager); // ����ǰ���������Ϸ��
 
 	printNextTetris(manager); // ��ʾ��һ������
 	//printScore(manager); // ��ʾ�÷���Ϣ
 	
 	manager->canhold = 1;
}
void setPoolColor(TetrisManager *manager, TetrisController *controller)// ������ɫ
{
 	int8_t i, x, y;
 
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];// ��ǰ����
 
 	for (i = 0; i < 16; ++i){
 		
 		y = (i >> 2) + manager->y; // �����õ���
 		if (y > y_end) // �����ײ�����
  			break;
 		x = (i & 3) + manager->x; // �����õ���
 		if ((tetris >> i) & 1) // ���ĵ�С�������ڵ�ǰ��������
  			controller->color[y][x] = (manager->type[0] | 8); // ������ɫ
 	}
}
void insertTetris(TetrisManager *manager)//���뷽�� 
{
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];// ��ǰ����
 
 	// ��ǰ����ÿ4λȡ����λ����Ϸ����Ӧλ�ã�����ɲ��뷽��
 	manager->pool[manager->y + 0] |= (((tetris >> 0x0) & 0x000F) << manager->x);
 	manager->pool[manager->y + 1] |= (((tetris >> 0x4) & 0x000F) << manager->x);
 	manager->pool[manager->y + 2] |= (((tetris >> 0x8) & 0x000F) << manager->x);
	manager->pool[manager->y + 3] |= (((tetris >> 0xC) & 0x000F) << manager->x);
}  

void removeTetris(TetrisManager *manager)
{
	// ��ǰ����
 	uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];
 
 	// ��ǰ����ÿ4λȡ������λȡ����λ�뵽��Ϸ����Ӧλ�ã�������Ƴ�����
 	manager->pool[manager->y + 0] &= ~(((tetris >> 0x0) & 0x000F) << manager->x);
 	manager->pool[manager->y + 1] &= ~(((tetris >> 0x4) & 0x000F) << manager->x);
 	manager->pool[manager->y + 2] &= ~(((tetris >> 0x8) & 0x000F) << manager->x);
	manager->pool[manager->y + 3] &= ~(((tetris >> 0xC) & 0x000F) << manager->x);
}

void printCurrentTetris(const TetrisManager *manager, const TetrisController *control)
{
	int8_t x, y;
 
 	// ��ʾ��ǰ���������ƶ�����õģ�Ϊ��ȥ�ƶ�ǰ�ķ��飬��Ҫ��չ��ʾ����
 	// ���ڲ����������ƶ����ʲ���Ҫ������չ
 	y = (manager->y > y_begin) ? (manager->y - 1) : y_begin; // ������չһ��
 	for (; y < y_end && y < manager->y + 4; ++y)
	{
 		x = (manager->x > x_begin) ? (manager->x - 1) : x_begin; // ������չһ��
 		for (; x < x_end && x < manager->x + 5; ++x) // ������չһ��
 		{
  			gotoxyInPool(x, y); // ���㵽��Ϸ���еķ���
  			if ((manager->pool[y] >> x) & 1) // ��Ϸ�ظ÷����з���
  			{
  			SetConsoleTextAttribute(g_hConsoleOutput, control->color[y][x]);// ����Ӧ��ɫ����ʾһ��ʵ�ķ���
  			printf("��");
  			}
  			else
  			{
  			SetConsoleTextAttribute(g_hConsoleOutput, 0);// û�з��飬��ʾ�հ�
  			printf("%2s", "");
  			}
 		}
 	}
}

void printNextTetris(const TetrisManager *manager)
{
	int8_t i;
 	uint16_t tetris;
 
 	// ��ʾԤ������ı߿�
 	SetConsoleTextAttribute(g_hConsoleOutput, 0xF);
 	goto_xy(26, 1);
 	printf("���������������������ש�������������������");
 	goto_xy(26, 2);
 	printf("��%9s��%9s��", "", "");
 	goto_xy(26, 3);
 	printf("��%9s��%9s��", "", "");
 	goto_xy(26, 4);
 	printf("��%9s��%9s��", "", "");
 	goto_xy(26, 5);
 	printf("��%9s��%9s��", "", "");
 	goto_xy(26, 6);
 	printf("���������������������ߩ�������������������");
 	goto_xy(26, 7);
 	printf("    next ");
 
 	// ��һ��������Ӧ��ɫ��ʾ
 	tetris = TetrisForms[manager->type[1]][manager->orientation[1]];
 	SetConsoleTextAttribute(g_hConsoleOutput, manager->type[1] | 8);
 	for (i = 0; i < 16; ++i)
 	{
 	goto_xy((i & 3) + 27, (i >> 2) + 2);
 	((tetris >> i) & 1) ? printf("��") : printf("%2s", "");
 	}
 
 	// ����һ��
 	tetris = TetrisForms[manager->type[2]][manager->orientation[2]];
 	SetConsoleTextAttribute(g_hConsoleOutput,manager->type[2] | 8);
 	for (i = 0; i < 16; ++i)
 	{
 	goto_xy((i & 3) + 32, (i >> 2) + 2);
 	((tetris >> i) & 1) ? printf("��") : printf("%2s", "");
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
 printf("��R/remake����F/ff");
 
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
 // ��ǰ����
 uint16_t tetris = TetrisForms[manager->type[0]][manager->orientation[0]];
 uint16_t dest = 0;
 
 // ��ȡ��ǰ��������Ϸ���е�����
 // ��Ϸ������x y��С������Ϣ�����͵��ߴ����16λ�޷�������
 dest |= (((manager->pool[manager->y + 0] >> manager->x) << 0x0) & 0x000F);
 dest |= (((manager->pool[manager->y + 1] >> manager->x) << 0x4) & 0x00F0);
 dest |= (((manager->pool[manager->y + 2] >> manager->x) << 0x8) & 0x0F00);
 dest |= (((manager->pool[manager->y + 3] >> manager->x) << 0xC) & 0xF000);
 
 // ����ǰ������Ŀ����������ص�����ײ������λ��Ľ����Ϊ0
 if((dest & tetris) != 0)
 {
 	return 1;
 }
 else return 0;
}





//================================================================
//�����ƶ� 
void moveDownTetris(TetrisManager *manager, TetrisController *control)
{
	int j, k;
 int8_t y = manager->y; // ��¼ԭ��λ��
 
 removeTetris(manager); // ���ߵ�ǰ����
 ++manager->y; // �����ƶ�
 
 if (Collide(manager)) // ��⵽��ײ
 {
 manager->y = y; // �ָ�Ϊԭ��λ��
 insertTetris(manager); // ���뵱ǰ���顣����λ��û�ı䣬����Ҫ������ɫ
 printCurrentTetris(manager,control);
 if (Erazed(manager, control)) // ��⵽����
 {
  printTetrisPool(manager, control); // ��ʾ��Ϸ��
 }
 }
 else
 {
 insertTetris(manager); // ���뵱ǰ����
printTetrisPool(manager,control);
 setPoolColor(manager, control); // ������ɫ
 printCurrentTetris(manager, control); // ��ʾ��ǰ����
 }
}
 
//=============================================================
// ˮƽ�ƶ�
void horzmoveTetris(TetrisManager *manager, TetrisController *control)
{
	int x = manager->x;
	
	removeTetris(manager);
	control->direction == 0 ? (--manager->x) : (++manager->x);
	
	if (Collide(manager)) // ��⵽��ײ
	{
		manager->x = x; // �ָ�Ϊԭ��λ��
		insertTetris(manager); // ���뵱ǰ���顣����λ��û�ı䣬����Ҫ������ɫ
	}else{
		insertTetris(manager); // ���뵱ǰ����
		setPoolColor(manager, control); // ������ɫ
		printCurrentTetris(manager, control); // ��ʾ��ǰ����
	}
}
//===============================================================
//��ת 
void spinTetris(TetrisManager *manager,TetrisController *control)
{
	int8_t ori = manager->orientation[0];
	removeTetris(manager);
	manager->orientation[0] = (ori + 1) % 4;
	
	if (Collide(manager)) // ��⵽��ײ
	{
	manager->orientation[0] = ori; // �ָ�Ϊԭ��ת״̬
	insertTetris(manager); // ���뵱ǰ���顣����״̬û�ı䣬����Ҫ������ɫ
	}else{
	insertTetris(manager); // ���뵱ǰ����
	setPoolColor(manager, control); // ������ɫ
	printCurrentTetris(manager, control); // ��ʾ��ǰ����
	}
}
//=============================================================================
//Ӳ�� 
void harddropTetris(TetrisManager *manager,TetrisController *control)
{
	removeTetris(manager); // ���ߵ�ǰ����
	for ( ;manager->y < y_end;++manager->y) // ��������
	{
		if (Collide(manager)) break;// ��⵽��ײ
	}
	--manager->y;
	insertTetris(manager); // ���뵱ǰ����
	setPoolColor(manager, control); // ������ɫ

	Erazed(manager, control); // �������
	printTetrisPool(manager, control); // ��ʾ��Ϸ��
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
		printTetrisPool(manager, control); // ��ʾ��Ϸ��
		
		manager->canhold = 0;
	}
}

void giveTetris_hold(TetrisManager *manager) // ��һ������_hold
{
	uint16_t tetris;
	int8_t temp;

	if(manager->firsthold){

	manager->type[3] = manager->type[0];

	manager->type[0] = manager->type[1]; // ��һ��������Ϊ��ǰ
	manager->orientation[0] = manager->orientation[1];

	manager->type[1] = manager->type[2];// ����һ���÷���Ϊ��һ��
	manager->orientation[1] = manager->orientation[2];

	manager->type[2] = random(manager);// �����������һ������
	manager->orientation[2] = rand() & 3;

	manager->firsthold=0;
	}else{
	temp = manager->type[0];
	manager->type[0] = manager->type[3];
	manager->type[3] = temp;	
	}
 
	tetris = TetrisForms[manager->type[0]][manager->orientation[0]]; // ��ǰ����
 
	if (tetris & 0xF000)
	{
	manager->y = 0;
	}
	else
	{
	manager->y = (tetris & 0xFF00) ? 1 : 2;
	}
	manager->x = 6; // ���õ�ǰ����x����

	if (Collide(manager)) // ��⵽��ײ
	{
	manager->dead = true; // �����Ϸ����
	}
	else // δ��⵽��ײ
	{
	insertTetris(manager); // ����ǰ���������Ϸ��
	}

	printNextTetris(manager); // ��ʾ��һ������
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
	((tetris >> i) & 1) ? printf("��") : printf("%2s", "");
	}
}

void printholdframe(TetrisManager *manager)//�ڵ�һ��holdǰҪ�Ȱѿ��Ӵ�ӡ���� 
{
	SetConsoleTextAttribute(g_hConsoleOutput, 0xF);
 	goto_xy(26, 8);
	printf("����������������������");
	goto_xy(26, 9);
	printf("��%9s��", "");
	goto_xy(26, 10);
	printf("��%9s��", "");
	goto_xy(26, 11);
	printf("��%9s��", "");
	goto_xy(26, 12);
	printf("��%9s��", "");
	goto_xy(26, 13);
	printf("����������������������");
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
	setPoolColor(manager, controller); // ������ɫ
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

