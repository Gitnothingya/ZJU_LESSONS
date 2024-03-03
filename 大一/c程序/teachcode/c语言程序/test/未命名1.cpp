#include <stdio.h>
#include "a.txt"
#include<string> 
static struct {
	int x,y[3];
}a[3]={{1,2,3,4},{5,6,7,8},{9,10,11,12}},*p=a+1;

int main()
{
	int z;
	z=((int*)p+1)[-2];
	printf("%d",a[1].x);
}


