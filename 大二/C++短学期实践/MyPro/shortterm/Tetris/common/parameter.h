#ifndef _PATAMETER_H_
#define _PATAMETER_H_

#define POOL_WIDTH 10
#define POOL_HEIGHT 30
#define POOL_SIZE POOL_WIDTH*POOL_HEIGHT

#define MAT_WIDTH 4
#define MAT_HEIGHT 4

#define pool(x,y) ((y)<0?WALL : ((x)<0 ? WALL:((x)>9 ? WALL:pool[(y)*POOL_WIDTH + (x)])))
#define setpool(x,y) pool[(y)*POOL_WIDTH + (x)]
#define shadow(x,y) ((y)<0?WALL : ((x)<0 ? WALL:((x)>9 ? WALL:shadow[(y)*POOL_WIDTH + (x)])))
#define setshadow(x,y) shadow[(y)*POOL_WIDTH + (x)]
#define setholdmat(x,y) hold_mat[(y)*MAT_WIDTH + (x)]
#define setnextmat(x,y) next_mat[(y)*MAT_WIDTH + (x)]


#define EMPTY 0
#define T_MINO 1
#define S_MINO 2
#define Z_MINO 3
#define L_MINO 4
#define J_MINO 5
#define I_MINO 6
#define O_MINO 7
#define WALL 8

#define BASE_TICK 1000

#endif
