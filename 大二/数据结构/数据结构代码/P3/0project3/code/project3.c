#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define INF 2000000000

typedef struct spot* spotp;
typedef struct spot{
	int num;        //the index of the ambulance dispatch centers and pick-up spots.
	int length;     //the time needed to pass the street
	spotp next;     //next spot connect to the sourse spot.
}spot;
//I use Adjacency List to store the graph.

typedef struct ADC{
	int dis[1011];//the least time we need to the i-th adc from dis[j] spot.
	int path[1011];// the one just before j-th spot when we take the shortest path.
	int strnum[1011];//the number of streets we pass.
}ADC;

void getgraph(); //generate the graph.
int spotnum(char ch[]);//Converts a string to an integer number.
void Dijkstra( int index);//record the shortest path to the adc[index]
void call(int spot);//call the ambulance

int Ns,Na;//the total number of pick-up spots(Ns)and the number of ambulance dispatch centers(Na).
spot graph[1011];//1~1000 are the space of pick-up spots,1001~1010 are the space of ambulance dispatch centers.
int amb_ava[11];//the number of available ambulances at the i-th center.
ADC adc[11];//record the shortest path to adc[i] from each spot.

void getgraph()
{
	int i,road;
	char get1[5],get2[5];
	int  spot1,spot2;
	int  length;
	spotp p;
	
	scanf("%d %d",&Ns,&Na);//the total number of pick-up spots 
						   //and the number of ambulance dispatch centers
	for(i=1;i<=Na;i++){
		scanf("%d",&amb_ava[i]);//the number of the ambulance in each center.
	}
	scanf("%d",&road);//the number of all the streets.
	
	for(i=0;i<road;i++){
		scanf("%s",get1);scanf("%s",get2);//get the two indices of two spots.
		scanf("%d",&length);//get the time
		spot1=spotnum(get1);spot2=spotnum(get2);//get the index we use in this program
		
		//the next eight lines update the graph.
		p=&graph[spot1];
		while(p->next) p=p->next;// get the tail of the list.
		p->next=(spotp)malloc(sizeof(spot));
		p->next->num=spot2; p->next->length=length; p->next->next=NULL;
		
		p=&graph[spot2];
		while(p->next) p=p->next;
		p->next=(spotp)malloc(sizeof(spot));
		p->next->num=spot1; p->next->length=length;	p->next->next=NULL; 
	}
}
int spotnum(char ch[])
{
	int spot;
	if(ch[0]=='A')spot=atoi(&ch[2])+1000;
				//if it is a center,we need add 1000 to get its index.
	else spot=atoi(ch);
	return spot;
}
void Dijkstra( int index)
{
	int known[1011];
	int i;
	for(i=1;i<=1010;i++){
		adc[index].dis[i]=INF;//the time is infnite for all spots at first
		adc[index].strnum[i]=0;//the number is 0.
		known[i]=0;//we don't know the spot
		if(i==index+1000){
			adc[index].dis[i]=0;//the sourse center spot is initialized to be 0;
		}
		if((i>Ns&&i<=1000)||(i>Na+1000&&i<=1010))known[i]=1;
		//we know we can't reach these spots.
	}//initialize the data.
	while(1){
		int min=INF,spotV=0;
		for(i=1;i<=1010;i++){
			if(adc[index].dis[i]<min&&known[i]==0){
				spotV=i;
				min=adc[index].dis[i];
			}
		}//we get the spot which has the shortest path .
		if(spotV==0)break;//if spotV==0,then all the spots are known.
		known[spotV]=1;
		spotp p=graph[spotV].next;
		
		while(p){
			if(known[p->num]==0){
				int Dis1=adc[index].dis[spotV];//the time we need to reach spotV.
				int Dp=p->length;//the time we need from spotV to p adjacent to V 
				int Dis2=adc[index].dis[p->num];//the shortest time p stored at first.
				if(Dis1+Dp<Dis2){//the new one is shorter ,update the data
					adc[index].dis[p->num]=Dis1+Dp;
					adc[index].strnum[p->num]=adc[index].strnum[spotV]+1;
					adc[index].path[p->num]=spotV;
				}
				else if(Dis1+Dp==Dis2&&adc[index].strnum[spotV]+1<=adc[index].strnum[p->num]){
					//they have the same time,but new one has less streets cost.
					adc[index].strnum[p->num]=adc[index].strnum[spotV]+1;
					adc[index].path[p->num]=spotV;
				}
			}
			p=p->next;// the next one adjacent to V .
		}
	}
}
void call(int spotV)
{
	int i,Dmin=INF,Smin,index=0;
	
	for(i=1;i<=Na;i++){
		if(amb_ava[i]!=0){//it need to has at least one ambulance.
		//three condition:1.shorter time 2.same time but more ambulance 3.same ambulance but less street cost.
			if((adc[i].dis[spotV]<Dmin)||
			(adc[i].dis[spotV]==Dmin&&amb_ava[i]>amb_ava[index])||
			(amb_ava[i]==amb_ava[index]&&adc[i].strnum[spotV]<Smin)){
				//update the chosen center data
				index=i;
				Dmin=adc[i].dis[spotV];
				Smin=adc[i].strnum[spotV];
			}		
		}
	}
	if(index==0||adc[index].dis[spotV]==INF){//there are no center connect to it.
		printf("All Busy\n");
		return ;
	}
	amb_ava[index]--;//the number needs to -1.
	
	int stack[1012],top=-1,element=spotV;

	while(adc[index].path[element]){//use the stack to record the path.
		stack[++top]=element;
		element=adc[index].path[element];
	}
	//print the path.
	printf("A-%d",index);
	while(top>=0){
		if(stack[top]>1000)printf(" A-%d",stack[top--]-1000);
		else printf(" %d",stack[top--]);
	}
	printf("\n");
	printf("%d\n",adc[index].dis[spotV]);
}
int main()
{
	int i;
	
	getgraph();
	for(i=1;i<=Na;i++){
		Dijkstra(i);
	}
	int Snum;//the number of spot need ambulance.
	int spotV;//the index of the spot.
	scanf("%d",&Snum);
	for(i=0;i<Snum;i++){
		scanf("%d",&spotV);
		call(spotV);
	}
	return 0;
}





