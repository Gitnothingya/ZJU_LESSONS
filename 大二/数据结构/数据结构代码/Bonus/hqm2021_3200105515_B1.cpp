/*Author:—’Íœ£ª ID:3200105515£ª B1*/ 

#include<stdio.h>

int checkstate(int k,int N,int state[]);
/* if the number can be delete,it can be one of the three conditions 
 * 1.the front numbers are all be deleted.
 * 2.the rear numbers have not been inserted.  
 * 3.the rear numbers have been inserted and also been deleted
 *
 * if the function return 0,it means the number can't be deleted and the sequence can't be obtained.
 * return 1,this number can be deleted. 
 */
int main()
{
    int N,K;
    scanf("%d %d",&N,&K);
    int queue[N],state[N],check[N];
    //queue[] stores the insertion sequence. 
    //check[] stores the deletion sequence.
    //state[] stores the states of numbers when we traverse one deletion seqence
    //state(0-No insertion;1-Insertion and no deletion;2-Deletion)  
    int flag;//if flag=1,then the sequence can't be obtained.
    int i,j,k;
    for(i=0;i<N;i++){
        scanf("%d",&queue[i]);
    }
    
    for(i=0;i<K;i++){
        flag=0; 
        for(j=0;j<N;j++){
            state[j]=0;
        }
		//At first,all the numbers haven't been inserted yet.
        
        for(j=0;j<N;j++){
            scanf("%d",&check[j]);
        }
		//input the deletion sequence.
        
        for(j=0;j<N;j++){
            for(k=0;k<N;k++){
                if(check[j]!=queue[k]&&state[k]==0){
                    state[k]=1;
                }
                if(check[j]==queue[k]) break;
            }
            //adjust the state array,the state of all the number before the number in check are 1 or 2. 
            
            if(!checkstate(k,N,state)){
                flag=1;
                break;
            }
            if(checkstate(k,N,state))state[k]=2;// the number can be deleted, the state is 2.
        }
        if(flag)printf("no\n");
        else printf("yes\n");
    }
}


int checkstate(int k,int N,int state[]){
    if(k==0)return 1;
    int i;
    
    i=k-1;
    while(state[i]==2&&i>0)i--;
    //check the front number.when it go to the first or the state of one front number isn't 2,it breaks.

    if(state[i]==2) return 1;			
    // if it go to the first,it means the front numbers are all deleted.
    // then this one can also be deleted.  
    
    //if some state of front numbers are 1,we can check the rear numbers.
    for(i=k+1;i<N;i++){
        if(state[i]==1) return 0;
        //if one of rear numbers have been inserted and not been deleted, this number can't be deleted.

        else if(state[i]==0) break;// the state behind will all be 0,there is no need to check.
    }
    return 1;
}
