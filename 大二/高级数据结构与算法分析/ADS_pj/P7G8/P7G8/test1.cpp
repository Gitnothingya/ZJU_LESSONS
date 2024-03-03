#include "skiplist.h"
#include "skiplist.cpp"
#include "list.cpp"
#include <time.h>
#include <iostream>
#include <stdio.h>
#include <string.h>

using namespace std;

void Increasing();
//insertion of N elements in increasing order.
//固定最大层数12，50%索引

void RandInFiDe(int DataID);
// insertion of N elements in random order.
// N random queries in a tree that is built by random insertion.
// random deletion of all the N elements from a tree that is built by random insertion.
//固定最大层数，50%索引

void DifProbility(int DataID);
//固定最大层数，不同索引概率

void DifLevel(int DataID);
//不同最大层数，固定索引概率

void IncreDifProbility();

void IncreDifLevel();

int MyData[1000000];
int Dlt[1000000];

int main()
{
    printf("This program is only used for time, and does not output other information.\n");
    printf("Now,what do you want to do?\n1-increasing insert, query and delete, fixed max level, 50%% index probility.\n");
    printf("2-random insert, query and delete, fixed max level, 50%% index probility.\n");
    printf("3-random insert, query and delete, fixed max level, different index probility.\n");
    printf("4-random insert, query and delete, different max level, fixed index probility.\n");
    printf("5-increasing insert, query and delete, fixed max level, different index probility.\n");
    printf("6-increasing insert, query and delete, different max level, fixed index probility.\n");
    printf("7-quit.\n");
    while(1){
        printf("input a number:");
        int op;
        scanf("%d",&op);
        if(op==7) break;
        printf("Just wait...\n");
        if(op==1){
            Increasing();
            continue;
        }
        if(op==5){
            IncreDifProbility();
            continue;
        }
        if(op==6){
            IncreDifLevel();
            continue;
        }
        for(int i = 1; i <= 5; i++){ //计算平均值
            printf("File folder %d:\n",i);
            if(op==2) RandInFiDe(i);
            else if(op==3) DifProbility(i);
            else if(op==4) DifLevel(i);
            else {
                printf("Not support");
                break;
            }
        }
    }
    return 0;
}

void Increasing()
{
    int keynum = 2500;
    clock_t start,finish;
    double Time;

    printf("Increasing Insertion:\n");
    while(1){
        skipList<string> listT(12,60);
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.insertNode(i+1,"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Skip list::keynum = " << keynum << ",Insert Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;

int ss[keynum];
for(int i=1;i<=keynum;i++){
    ss[i-1]=i;
}
        if(keynum <= 50000){
            SingleList<string> listS;
            start = clock();
            for(int i = 0; i < keynum; i++){
                listS.insertNode(ss[i],"a");
            }
            finish = clock();
            Time = (double)(finish-start)/CLOCKS_PER_SEC;
            cout << "Single list::keynum = " << keynum << ",Insert Time = " << Time << "s";
            start = clock();
            for(int i = 0; i < keynum; i++){
                listS.findNode(ss[i]);
            }
            finish = clock();
            Time = (double)(finish-start)/CLOCKS_PER_SEC;
            cout << ",Query Time = " << Time << "s";
            start = clock();
            for(int i = 0; i < keynum; i++){
                listS.deleteNode(ss[i]);
            }
            finish = clock();
            Time = (double)(finish-start)/CLOCKS_PER_SEC;
            cout << ",Delete Time = " << Time << "s" << endl;
        }

        if(keynum==2500) keynum=5000;
        else if(keynum==5000) keynum=10000;
        else if(keynum==10000) keynum=15000;
        else if(keynum==15000) keynum=20000;
        else if(keynum==20000) keynum=50000;
        else if(keynum==50000) keynum=100000;
        else if(keynum==100000) keynum=500000;
        else if(keynum>=500000) break;
    }
}

void RandInFiDe(int DataID)
{
    FILE* fp,*dp;
    int i;
    int keynum = 10000;
    char TmpID[2];
    itoa(DataID,TmpID,10);
    
    clock_t start,finish;
    double Time;
    while(1){
        skipList<string> listT(12,50);
        SingleList<string> listS;
        int next;
        char s1[22]={0},s2[22]={0};
        strcat(s1,"data");
        strcat(s1,TmpID);
        strcat(s1,"/RIn");
        char c[10];
        itoa(keynum,c,10);
        strcat(s1,c);
        strcat(s1,".txt");

        strcat(s2,"data");
        strcat(s2,TmpID);
        strcat(s2,"/De");
        strcat(s2,c);
        strcat(s2,".txt");

        fp=fopen(s1,"r");
        dp=fopen(s2,"r");
        switch(keynum){
            case 10000:
                next=20000;
                break;
            case 20000:
                next=50000;
                break;
            case 50000:
                next=100000;
                break;
            case 100000:
                next=500000;
                break;
            case 500000:
                next=1000000;
                break;
            case 1000000:
                next=0;
                break;
            default:break;
        }
        for(i = 0; i < keynum; i++){
            fscanf(fp,"%d",&MyData[i]);
            fscanf(dp,"%d",&Dlt[i]);
        }
        start = clock();
        for(i = 0; i < keynum; i++){
            listT.insertNode(MyData[i],"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Skip list::keynum = " << keynum << ",Insert Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;

        start = clock();
        for(i = 0; i < keynum; i++){
            listS.insertNode(MyData[i],"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Single list::keynum = " << keynum << ",Insert Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
           listS.findNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listS.deleteNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;

        if(keynum == 1000000) break;
        keynum = next;
        fclose(fp);
        fclose(dp);
    }
}

void DifProbility(int DataID)
{
    FILE* fp,*dp;
    int i;
    int keynum = 100000;
    char TmpID[2];
    itoa(DataID,TmpID,10);
    
    clock_t start,finish;
    double Time;
    for(int j = 20; j <= 60; j+=10){
        skipList<string> listT(12,j);
        int next;
        char s1[22]={0},s2[22]={0};
        strcat(s1,"data");
        strcat(s1,TmpID);
        strcat(s1,"/RIn");
        char c[10];
        itoa(keynum,c,10);
        strcat(s1,c);
        strcat(s1,".txt");

        strcat(s2,"data");
        strcat(s2,TmpID);
        strcat(s2,"/De");
        strcat(s2,c);
        strcat(s2,".txt");

        fp=fopen(s1,"r");
        dp=fopen(s2,"r");
        for(i = 0; i < keynum; i++){
            fscanf(fp,"%d",&MyData[i]);
            fscanf(dp,"%d",&Dlt[i]);
        }
        start = clock();
        for(i = 0; i < keynum; i++){
            listT.insertNode(MyData[i],"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Index probability = " << j << "%,Insert Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;
        fclose(fp);
        fclose(dp);
    }
}

void DifLevel(int DataID)
{
    FILE* fp,*dp;
    int i;
    int keynum = 100000;
    char TmpID[2];
    itoa(DataID,TmpID,10);
    
    clock_t start,finish;
    double Time;
    for(int j = 4; j <= 20; j+=4){
        skipList<string> listT(j,50);
        int next;
        char s1[22]={0},s2[22]={0};
        strcat(s1,"data");
        strcat(s1,TmpID);
        strcat(s1,"/RIn");
        char c[10];
        itoa(keynum,c,10);
        strcat(s1,c);
        strcat(s1,".txt");

        strcat(s2,"data");
        strcat(s2,TmpID);
        strcat(s2,"/De");
        strcat(s2,c);
        strcat(s2,".txt");

        fp=fopen(s1,"r");
        dp=fopen(s2,"r");
        for(i = 0; i < keynum; i++){
            fscanf(fp,"%d",&MyData[i]);
            fscanf(dp,"%d",&Dlt[i]);
        }
        start = clock();
        for(i = 0; i < keynum; i++){
            listT.insertNode(MyData[i],"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Max level number = " << j << ",Insert Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";

        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(Dlt[i]);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;
        fclose(fp);
        fclose(dp);
    }
}

void IncreDifProbility()
{
    int keynum = 500000;
    clock_t start,finish;
    double Time;

    printf("Increasing Insertion:\n");
    for(int j = 5; j <= 60; j+=10){
        skipList<string> listT(12,j);
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.insertNode(i+1,"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Index probability = " << j << "%,Insert Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;
    }
}

void IncreDifLevel()
{
    int keynum = 100000;
    clock_t start,finish;
    double Time;

    printf("Increasing Insertion:\n");
    for(int j = 4; j <= 20; j++){
        skipList<string> listT(j,50);
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.insertNode(i+1,"a");
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << "Max level = " << j << ",Insert Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.findNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Query Time = " << Time << "s";
        start = clock();
        for(int i = 0; i < keynum; i++){
            listT.deleteNode(i+1);
        }
        finish = clock();
        Time = (double)(finish-start)/CLOCKS_PER_SEC;
        cout << ",Delete Time = " << Time << "s" << endl;
    }
}
