#include <stdio.h>
/*used to produce the header of the table which record the performance of the functions*/
int main(){
    FILE *fp = fopen("Test_cases\\performance.csv","a");
    fprintf(fp,"Algorithm,Size,Interations(K),Ticks,Total Time(sec),Duration(sec)\n");
    fclose(fp);
}