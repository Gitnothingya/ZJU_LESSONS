#ifndef TEST
#define TEST
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

    #ifndef SUBMATRIX
    #define SUBMATRIX
    /*determine a submatrix exactly*/
    struct subMatrix{
        /*the coordinate of the top-left corner of the submatrix*/
        int x;
        int y;
        /*the length of the submatrix, which is its x-axis projection*/
        int l;
        /*the height of the submatrix, which is its y-axis rojecting*/
        int h;
        /*the maximum sum*/
        int maxsum;
    };
    /*pointer to the submatrix*/
    typedef struct subMatrix *Ptr2SubMatrix;
    #endif

    #ifndef MATRIX
    #define MATRIX
    /*represent the original matrix*/
    struct Matrix{
        /*the size of the original matrix, for instance, a n*n matrix is of size n*/
        int size;
        /*store the elements which is in the matrix*/
        int *Array;
    };
    /*pointer to the original matrix*/
    typedef struct Matrix *Ptr2Matrix;
    #endif

    #ifndef SOLVER
    #define SOLVER
    /*pointer to the solver functions*/
    /*return the maximum sum*/
    typedef void (*solver)(Ptr2Matrix matrix, Ptr2SubMatrix solution);
    #endif

    #ifndef RUNTIME
    #define RUNTIME
    /*record the performances of the functions*/
    struct runTime{
        /*the number of execution for the function tested*/
        int iterations;
        /*the number of all ticks in the function run time*/
        clock_t ticks;
        /*the total run time*/
        double totalTime;
        /*the run time for executing the function tested once*/
        double duration;
    };
    /*pointer to the record of the performances of the functions*/
    typedef struct runTime *Ptr2RunTime;
    #endif

/******************************************************************************
*   tester: check the solution, record the run time, print the result         *
*   parameter:  matrix  ->  the original matrix                               *
*               solution->  record the submatrix with the maximum sum         *
*               solvers ->  an array whose element points to three different  *
*                           functions implementing three different algorithms *
*               index   ->  index of the function to be tested                *
*                           index = 0 means that the function runs in O(N^6)  *
*                           index = 1 means that the function runs in O(N^4)  *
*                           index = 2 means that the function runs in O(N^3)  *
*               iterations  ->  the expected number of execution              *
*                               for the function tested                       *
*******************************************************************************/
void tester(Ptr2Matrix matrix, Ptr2SubMatrix solution, solver *solvers, int index, int iterations);

/******************************************************************************
*   checker:    The checker checks whether the solution is right or not,      *
*               by comparing it with the solution provided by the standard    *
*               solver. The standard solver is the function runs in O(N^6)    *
*               because it implement the Brute Force algorithm.               *
*   parameter:  solution    ->  the solution to be checked by the checker     *
*               standard    ->  the standard solution                         *
*   returned value: return 0 in the case that the solution is incorrect,      *
*                   return other values while the solution is correct.        *
*******************************************************************************/
int checker(Ptr2SubMatrix solution, Ptr2SubMatrix standard);

/******************************************************************************
*   printer:    The printer output the test result. The submatrix with maximum*
*               sum and the original matrix will be printed to the file named *
*               "solution.txt" and the performance of the function tested will*
*               be printed the file named "performance.csv"                   *
*   parameter:  matrix  ->  the original matrix                               *
*               solution->  the solution provided by the function tested      *
*               performance ->  the performance of thw function tested        *
*               index   -> index of the function to be tested                 *
*               iterations  ->  the expected number of execution              *
*                               for the function tested                       *
*   returned value: return 0 in the case that printing failed,                *
*                   return other values while the printer successfully print. *
*******************************************************************************/
int printer(Ptr2Matrix matrix, Ptr2SubMatrix solution, Ptr2RunTime performance, int index);

/******************************************************************************
*   stopwatch:  record the total ticks in the function tested run time.       *
*   parameter:  matrix  ->  the original matrix                               *
*               solution->  A piece of memory used for storing the solution   *
*               solverf ->  the function to be tested                         *
*   returned value: the performence in the function tested run time.          *
*******************************************************************************/
Ptr2RunTime stopwatch(Ptr2Matrix matrix, Ptr2SubMatrix solution, solver solverf, int iterations);
#endif