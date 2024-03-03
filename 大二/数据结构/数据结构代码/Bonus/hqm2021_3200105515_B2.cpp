/*Author:—’Íœ£ª ID:3200105515£ª B2*/ 

/*we just need to sort the cat and men according to size and weight .
 *Then we can get the correspondence between man and hat.
 *After that, for each hat,we just need to find its master in the given sequence
 *and print the index.
 */
#include<stdio.h>
#define max 10000
void sort(int d[max],int s[max]);//selection sort 
//(the simplest sorting method.I want to use Bubble sort at first,but the time don't allowed)

int N;
int hat[max],hat_s[max];
//hat[] is the given sequence, hst_s[] is the sorted sequence. 
int man[max],man_s[max];
//man[] is the given sequence, man_s[] is the sorted sequence. 

void sort(int d[max],int s[max])
{
    int i,j;
    for(i=0;i<N;i++){
        d[i]=s[i];
    }
    for(i=0;i<N-1;i++){
        int min=i;
        for(j=i+1;j<N;j++){
            if(d[min]>d[j])min=j;//find the minimun in the remaining number.
        }
        if(min!=i){
            int temp=d[i];
            d[i]=d[min];
            d[min]=temp;
            //insert the minimum.
        }
    }
}
int main()
{
    scanf("%d",&N);
    int rank[N],num=0;
    
    int i,j;
    for(i=0;i<N;i++){
        scanf("%d",&hat[i]);//get the hat sequence
    }
    for(i=0;i<N;i++){
        scanf("%d",&man[i]);//get the man sequence
    }
    sort(hat_s,hat);//sort the man sequence
    sort(man_s,man);//sort the man sequence
    
    for(i=N-1;i>-1;i--){
        int hatsize;
        for(j=0;j<N;j++){
            if(hat_s[j]==hat[i]) {
				hatsize=j;
				break;
			}
        }
        //find the index of the hat in the sorted sequence 
        int manweight=man_s[j];//the index is also its master's in the man sorted sequence.
        int manrank;
        for(j=0;j<N;j++){
            if(manweight==man[j]) {
				manrank=j;//find the man in the given sequence.
				break;
			} 
        }
        rank[num++]=j;
    }
    printf("%d",rank[0]+1);//the index of array is not the order we need to print,we need +1. 
    for(i=1;i<N;i++){
        printf(" %d",rank[i]+1);
    }
}


