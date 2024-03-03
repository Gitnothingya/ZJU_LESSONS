#ifndef SOLVERS
#define SOLVERS
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
    
    /********************************************************************
    *   algorithm0: implement the algorithm run in O(N^6). Traserval    *
    *               all possible submatrix and compare their sum with   *
    *               the temporary maximum sum.                          *
    *********************************************************************/
    void algorithm0(Ptr2Matrix matrix, Ptr2SubMatrix solution);
    /********************************************************************
    *   algorithm1: implement the algorithm run in O(N^4). Traserval    *
    *               all possible submatrix and compare their sum with   *
    *               the temporary maximum sum. But different with the   * 
    *               algorithm1, algorithm2 avoid to repeat some compute *
    *               to speed up.                                        *
    *********************************************************************/
    void algorithm1(Ptr2Matrix matrix, Ptr2SubMatrix solution);
    /********************************************************************
    *   algorithm2: implement the algorithm run in O(N^3). Divide all   *
    *               possible submatrix into four classes, with length of*
    *               1, 2, 3, 4, respectively. Each classes can be       *
    *               treated as an linear array.                         *
    *********************************************************************/
    void algorithm2(Ptr2Matrix matrix, Ptr2SubMatrix solution);
#endif