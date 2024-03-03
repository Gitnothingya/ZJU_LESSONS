#include "test.h"

void tester(Ptr2Matrix matrix, Ptr2SubMatrix solution, solver *solvers, int index, int iterations){
    solver solverf = solvers[index];
    Ptr2RunTime performance = stopwatch(matrix,solution,solverf,iterations);

    Ptr2SubMatrix standard = (Ptr2SubMatrix)malloc(sizeof(struct subMatrix));
    solvers[1](matrix,standard);   
    int correctness = checker(solution,standard);
    if(!correctness) {
        printf("The solution is wrong!\n");
        return;
    }

    int print = printer(matrix,solution,performance,index);
    if(!print)  printf("Failed to print the result!\n");
}

Ptr2RunTime stopwatch(Ptr2Matrix matrix, Ptr2SubMatrix solution, solver solverf, int iterations){
    clock_t start,stop;
    int i = 0;
    start = clock();
    while(i++ < iterations)
        solverf(matrix, solution);/*repeat the function calls*/
    stop = clock();
    Ptr2RunTime performance = (Ptr2RunTime)malloc(sizeof(struct runTime));
    performance->iterations = iterations;
    performance->ticks = stop-start;
    performance->totalTime = ((double)(performance->ticks))/CLK_TCK;
    performance->duration = (performance->totalTime)/iterations;
    return performance;
}

int checker(Ptr2SubMatrix solution, Ptr2SubMatrix standard){
    int correction = 1;
    if((solution->h!=standard->h)||(solution->l!=standard->l)||(solution->maxsum!=standard->maxsum)||(solution->x!=standard->x)||(solution->y!=standard->y))
        correction = 0;
    return correction;
}

int printer(Ptr2Matrix matrix, Ptr2SubMatrix solution, Ptr2RunTime performance, int index){
    FILE *txt = fopen("Test_cases\\solution.txt", "a");/*open the "solution.txt" file*/
    if(!txt)    return 0;

    /*print the original matrix to the solution.txt file*/
    fprintf(txt, "Algorithm%d:\n", index);
    fprintf(txt, "original matrix:\tsize:%d\n",matrix->size);
    for(int j=0; j < matrix->size; j++){/*represent the ordinate of an element*/
        for(int i=0; i < matrix->size; i++){/*represent the abscissa of an element*/
            fprintf(txt, "%10d", matrix->Array[j*(matrix->size)+i]);
        }
        fprintf(txt, "\n");
    }

    /*print the solution submatrix to the solution.txt file*/
    fprintf(txt, "solution:%d\nx:%d\ty:%d\tl:%d\th:%d\n",solution->maxsum,solution->x,solution->y,solution->l,solution->h);
    for(int j= solution->y; j< solution->y+solution->h; j++){
        for(int i= solution->x; i< solution->x+solution->l; i++){
            fprintf(txt, "%10d", matrix->Array[j*(matrix->size)+i]);
        }
        fprintf(txt, "\n");
    }
    fclose(txt);

    /*print the performance of the function tested to the performance.csv file*/
    FILE *csv = fopen("Test_cases\\performance.csv", "a");
    if(!csv)    return 0;
    fprintf(csv, "Algorithm%d,%d,%d,%ld,%f,%f\n", index, matrix->size, performance->iterations, performance->ticks, performance->totalTime, performance->duration);
    fclose(csv);

    return 1;
}