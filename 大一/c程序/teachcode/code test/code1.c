#include <stdio.h>
typedef struct 
{
	int x;
	int y;
}num;
int main()
{
    unsigned char a=129;
    printf("%d ",a);
    
    char b=a;
    printf("%d ",b);
    int c=-2;
    b=c;
    printf("%d",b);
}
