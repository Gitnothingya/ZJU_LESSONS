#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "./include/avltree.h"
#include "./include/bstree.h"
#include "./include/rbtree.h"
#include "./include/splaytree.h"

void increasing();
//insertion of N elements in increasing order.

void RandInFiDe();
// insertion of N elements in random order.
// N random queries in a tree that is built by random insertion.
// random deletion of all the N elements from a tree that is built by random insertion.

void Skewedquery();
// N skewed queries in a tree that is built by random insertion. 

int number[15]={56,12,69,87,16,30,70,45,23,75,34,43,9,47,60};
int numberq[15]={56,12,74,56};

int data[1000000];
int Dlt[1000000];

int main()
{
    printf("This program is only used for time and height tests, and does not output other information.\n");
    printf("That is, if you try to find or remove a node that does not exist, no message will be returned.\n");
    printf("Now,what do you want to do?\n1-increasing insert\n2-random insert, query and delete\n");
    printf("3-skewed query\n");
    printf("input a number:");
    int op;
    scanf("%d",&op);
    printf("Just wait...\n");
    if(op==1) increasing();
    else if(op==2) RandInFiDe();
    else if(op==3) Skewedquery();
    else printf("Not support");

system("Pause");
    return 0;

}

void increasing()
{
    int i,keynum;
    clock_t start,finish;
    double Stime,Atime,Btime,Rtime;

    for(i=0;i<1000000;i++){
        data[i]=i+1;
    }

    printf("Increasing Insertion:\n");
    printf("keynum\tsplay\t\tavltree\t\tbstree\t\trbtree\n");
    keynum=2500;
    while(1){
        splayP ST = NULL;
        PtrAVLTree_Node AT = NULL;
        PtrBST_Node BT = NULL;
        RBptr RT = RBNewNode(-1);

        if(keynum>=10000){
            start = clock();
            for(i=0;i<keynum;i++){
                ST = S_Insertion(ST,data[i]);
            }
            finish = clock();
            Stime =(double)(finish-start)/CLOCKS_PER_SEC;//
        }
        else Stime=-1;

        if(keynum>=10000){
            start = clock();
            for(i=0;i<keynum;i++){
                AT = InsertAVLTree_Node(AT,data[i]);
            }
            finish = clock();
            Atime =(double)(finish-start)/CLOCKS_PER_SEC;//
        }
        else Atime=-1;

        if(keynum<=20000){
            start = clock();
            for(i=0;i<keynum;i++){
                BT = InsertBST_Node(BT,data[i]);
            }
            finish = clock();
            Btime =(double)(finish-start)/CLOCKS_PER_SEC;//
        }
        else Btime=-1;

        if(keynum>=10000){
            start = clock();
            for(i=0;i<keynum;i++){
                RT = RBInsert(data[i],RT);
            }
            finish = clock();
            Rtime =(double)(finish-start)/CLOCKS_PER_SEC;//
        }
        else Rtime=-1;

        printf("%d\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t\n",keynum,Stime,S_GetHeight(ST) ,Atime, HeightAVLTree(AT), Btime,HeightBST(BT), Rtime,GetHeight(RT));
        
        if(keynum==2500/**/) keynum=5000;
        else if(keynum==5000) keynum=10000;
        else if(keynum==10000) keynum=15000;
        else if(keynum==15000) keynum=20000;
        else if(keynum==20000) keynum=50000;
        else if(keynum==50000) keynum=100000;
        else if(keynum==100000) keynum=500000;
        else if(keynum>=500000) break;
    }
    return ;
}

void RandInFiDe()
{

    FILE* fp,*dp;
    int i;
    int keynum=10000;

    clock_t start,finish;
    double Stime=0,Atime=0,Btime=0,Rtime=0;

    printf("keynum\tsplay\t\tavltree\t\tbstree\t\trbtree\n");
    while(1){
        splayP ST = NULL;
        PtrAVLTree_Node AT = NULL;
        PtrBST_Node BT = NULL;
        RBptr RT = RBNewNode(-1);
        int next;
        switch(keynum){
            case 10000:
                fp=fopen("data/RIn10000.txt","r");
                dp=fopen("data/De10000.txt","r");
                next=20000;
                break;
            case 20000:
                fp=fopen("data/RIn20000.txt","r");
                dp=fopen("data/De20000.txt","r");
                next=50000;
                break;
            case 50000:
                fp=fopen("data/RIn50000.txt","r");
                dp=fopen("data/De50000.txt","r");
                next=100000;
                break;
            case 100000:
                fp=fopen("data/RIn100000.txt","r");
                dp=fopen("data/De100000.txt","r");
                next=500000;
                break;
            case 500000:
                fp=fopen("data/RIn500000.txt","r");
                dp=fopen("data/De500000.txt","r");
                next=1000000;
                break;
            case 1000000:
                fp=fopen("data/RIn1000000.txt","r");
                dp=fopen("data/De1000000.txt","r");
                next=0;
                break;
            default:break;
        }
        for(i=0;i<keynum;i++){
            fscanf(fp,"%d",&data[i]);
            fscanf(dp,"%d",&Dlt[i]);
        }

            start = clock();
            for(i=0;i<keynum;i++){
                ST = S_Insertion(ST,data[i]);
            }
            finish = clock();
            Stime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                AT = InsertAVLTree_Node(AT,data[i]);
            }
            finish = clock();
            Atime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                BT = InsertBST_Node(BT,data[i]);
            }
            finish = clock();
            Btime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                RT = RBInsert(data[i],RT);
            }
            finish = clock();
            Rtime =(double)(finish-start)/CLOCKS_PER_SEC;//


        printf("%d\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t\n",keynum,Stime,S_GetHeight(ST) ,Atime, HeightAVLTree(AT), Btime,HeightBST(BT), Rtime,GetHeight(RT));
        
        
        //随机查询

            start = clock();
            for(i=0;i<keynum;i++){
                ST = Splay(ST,Dlt[i]);
            }
            finish = clock();
            Stime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                PtrAVLTree_Node ATF = FindkeyAVLTree_Node(AT,Dlt[i]);
            }
            finish = clock();
            Atime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                PtrBST_Node BTF = FindkeyBST_Node(BT,Dlt[i]);
            }
            finish = clock();
            Btime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                RBptr RTF = RBFindKey(Dlt[i],RT);
            }
            finish = clock();
            Rtime =(double)(finish-start)/CLOCKS_PER_SEC;//


        printf("Query\t%.4lf\t\t%.4lf\t\t%.4lf\t\t%.4lf\t\t\n",Stime,Atime,Btime,Rtime);
        
        
        
        //删除
        
            start = clock();
            for(i=0;i<keynum;i++){
                ST = S_Deletion(ST,Dlt[i]);
            }
            finish = clock();
            Stime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                AT = DeleteAVLTree_Node(AT,Dlt[i]);
            }
            finish = clock();
            Atime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                BT = DeleteBST_Node(BT,Dlt[i]);
            }
            finish = clock();
            Btime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                RT = RBDelete(Dlt[i],RT);
            }
            finish = clock();
            Rtime =(double)(finish-start)/CLOCKS_PER_SEC;//


        printf("Delete\t%.4lf\t\t%.4lf\t\t%.4lf\t\t%.4lf\t\t\n\n",Stime,Atime,Btime,Rtime);
        if(keynum==1000000) break;
        keynum=next;
        fclose(fp);
        fclose(dp);
    }

}


void Skewedquery()
{
    FILE* fp;
    int i;
    int keynum=1000000;

    clock_t start,finish;
    double Stime=0,Atime=0,Btime=0,Rtime=0;
    splayP ST = NULL;
    PtrAVLTree_Node AT = NULL;
    PtrBST_Node BT = NULL;
    RBptr RT = RBNewNode(-1);

    fp=fopen("data/RIn1000000.txt","r");
    for(i=0;i<keynum;i++){
        fscanf(fp,"%d",&data[i]);
    }
    fclose(fp);
    for(i=0;i<keynum;i++){
        ST = S_Insertion(ST,data[i]);
    }
    for(i=0;i<keynum;i++){
        AT = InsertAVLTree_Node(AT,data[i]);
    }
    for(i=0;i<keynum;i++){
        BT = InsertBST_Node(BT,data[i]);
    }
    for(i=0;i<keynum;i++){
        RT = RBInsert(data[i],RT);
    }

    printf("keynum\tsplay\t\tavltree\t\tbstree\t\trbtree\n");
    int j;
    for(j=0;j<6;j++){
        switch(j){
            case 0:fp=fopen("data/Q3.txt","r");break;
            case 1:fp=fopen("data/Q6.txt","r");break;
            case 2:fp=fopen("data/Q10.txt","r");break;
            case 3:fp=fopen("data/Q50.txt","r");break;
            case 4:fp=fopen("data/Q1000.txt","r");break;
            case 5:fp=fopen("data/QS1000.txt","r");break;
            default:break;
        }

        for(i=0;i<keynum;i++){
            fscanf(fp,"%d",&Dlt[i]);
        }
        fclose(fp);

            start = clock();
            for(i=0;i<keynum;i++){
                ST = Splay(ST,Dlt[i]);
            }
            finish = clock();
            Stime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                PtrAVLTree_Node ATF = FindkeyAVLTree_Node(AT,Dlt[i]);
            }
            finish = clock();
            Atime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                PtrBST_Node BTF = FindkeyBST_Node(BT,Dlt[i]);
            }
            finish = clock();
            Btime =(double)(finish-start)/CLOCKS_PER_SEC;//


            start = clock();
            for(i=0;i<keynum;i++){
                RBptr RTF = RBFindKey(Dlt[i],RT);
            }
            finish = clock();
            Rtime =(double)(finish-start)/CLOCKS_PER_SEC;//


        printf("Query\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t%.4lf(%d)\t\n",Stime,S_GetHeight(ST) ,Atime, HeightAVLTree(AT), Btime,HeightBST(BT), Rtime,GetHeight(RT));
        fclose(fp);
    }

}

