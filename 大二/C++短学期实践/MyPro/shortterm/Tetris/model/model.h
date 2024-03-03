#ifndef MODEL_H
#define MODEL_H

#include <string.h>
#include <cstdlib>
#include <memory>
#include "../common/blockpool.h"

class Tetris{
public:
    Tetris();
    ~Tetris();
    inline int GetX(){ return x; }
    inline int GetY(){ return y; }
    inline int GetType(){ return type; }
    inline int GetRotation(){ return rotation; }
    inline void SetX(int a){ x = a; }
    inline void SetY(int a){ y = a; }
    inline void SetType(int a){ type = a; }
    inline void SetRotation(int a){ rotation = a; }
    static void ResetSeed(){ while (!rand_type.empty()) rand_type.pop(); };

    void GenerateSeed();
private:
    int x=4;
    int y=20;
    int rotation=0;
    int type;
    static std::queue<int> rand_type;
};

class matrix
{
public:
    matrix() { data = new int[MAT_WIDTH * MAT_HEIGHT]{0}; }
    ~matrix() { delete[] data; }
    void setmatrix(Tetris* T);
    inline int* getdata() { return data; }
private:
    inline int& get(int x, int y) { return data[(y)*MAT_WIDTH + (x)]; }
    int* data;
};

class DataModel
{
public:
    DataModel();
    ~DataModel();

    bool start_game();
    bool left();
    bool down();
    bool right();
    bool rotate();
    bool counterrotate();
    bool harddrop();
    bool hold();
    bool pause();
    bool setting();

    inline int* get_pool() { return pool; }
    inline int* get_shadow() { return shadow; }
    inline int* get_hold() { return hold_mat; }
    std::queue<int*>* get_next(){ return &next_mat_vec; }

    inline int* get_linenum(){return &lineNum;}
    inline int* get_score(){return &score;}


    //通知函数
    inline void set_end_notification(const std::shared_ptr<NotificationBase> notice){ m_notice_end = notice; }


    
private:
    int* pool;
    int* shadow;
    int* hold_mat;
    std::queue<int*> next_mat_vec;
    std::queue<Tetris*> block_vec;
    Tetris* hold_block = nullptr;

    std:: shared_ptr<NotificationBase> m_notice_end;

    int lineNum = 0;//消行数
    int score = 0;//分数
    int gameMode; //游戏模式 无限、竞速
    int gameState;//游戏状态 pause run
    bool firstrun=1;
    bool lose = 0;

    //内部操作与判断函数
    void add(Tetris* T);
    void remove(Tetris* T);
    void solidify();
    bool clearline();
    void poolmovedown(int y);
    bool collide(Tetris* T);
    void updateshadow(Tetris* T);
    void updatehold(Tetris* T);
    void updatenext(int a);
    void addscore(int n);
    void setlosepool();
};

#endif // MODEL_H
