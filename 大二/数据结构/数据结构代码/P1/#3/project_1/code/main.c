#include "test.h"
#include "solvers.h"

int main(int argc,char *argv[]){
    /*print the parametes, which determine the iterations, algorithm, and the size of matrix*/
    printf("iterations:%d\n",atoi(argv[1]));
    printf("algorithm:%d\n",atoi(argv[2]));
    printf("size:%d\n",atoi(argv[3]));
    
    /*create a matrix with size of argv[3]*argv[3]*/
    Ptr2Matrix matrix = (Ptr2Matrix)malloc(sizeof(struct Matrix));
    matrix->Array = (int *)malloc(sizeof(int)*atoi(argv[3])*atoi(argv[3]));
    matrix->size = atoi(argv[3]);
    srand((unsigned)time(NULL));
    for(int i=0; i<(matrix->size)*(matrix->size); i++){
        matrix->Array[i] = rand()%21-10;/*produce a random number in the interval [-10,10]*/
    }
    /*create a struct to store solution*/
    Ptr2SubMatrix solution = (Ptr2SubMatrix)malloc(sizeof(struct subMatrix));
    /*initialize the solution*/
    solution->h = 0;
    solution->l = 0;
    solution->maxsum = 0;
    solution->x = 0;
    solution->y = 0;

    /*store the pointer which point to the solver*/
    solver solvers[3];
    solvers[0] = algorithm0;
    solvers[1] = algorithm1;
    solvers[2] = algorithm2;

    int index = atoi(argv[2]);
    int iterations = atoi(argv[1]);

    /*start the test*/
    tester(matrix, solution, solvers, index, iterations);

    printf("finished the test\n");
}