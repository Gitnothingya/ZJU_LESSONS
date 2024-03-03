#include "model.h"

std::queue<int> Tetris::rand_type;

Tetris::Tetris()
{
    if(rand_type.empty()) GenerateSeed();
    x = 4;
    y = 20;
    rotation = 0;
    type = rand_type.front()+1;
    rand_type.pop();
}
Tetris::~Tetris()
{}

void Tetris::GenerateSeed(){
    srand(time(0));
    bool have[7] = {0};
    for( int count = 0; count < 7; ){
        int type = rand()%7;
        if(!have[type]){
            have[type] = 1;
            rand_type.push(type);
            count ++;
        }
    }
}

DataModel::DataModel()
{
    pool = new int[POOL_WIDTH * POOL_HEIGHT]{0};
    shadow = new int[POOL_WIDTH * POOL_HEIGHT]{0};
    hold_mat = new int[MAT_WIDTH * MAT_HEIGHT]{0};
    
    Tetris::ResetSeed();
    for(int i=0; i<4; i++){
        Tetris* T = new Tetris;
        block_vec.push(T);
    }
    updatenext(0);
}

DataModel::~DataModel()
{
    delete[] pool;
}

bool DataModel::start_game()
{
    if(firstrun){
        add(block_vec.front());
        updateshadow(block_vec.front());
        updatenext(1);
        firstrun = 0;
        lose = 0;
        return 1;
    }else{
        lose = 0;
        for(int i=0; i<POOL_HEIGHT*POOL_WIDTH; i++) pool[i] = EMPTY;
        for(int i=0; i<POOL_HEIGHT*POOL_WIDTH; i++) shadow[i] = EMPTY;
        for(int i=0; i<MAT_HEIGHT*MAT_WIDTH; i++) hold_mat[i] = EMPTY;
        while(!next_mat_vec.empty()) next_mat_vec.pop();
        while(!block_vec.empty()) block_vec.pop();
        hold_block = nullptr;
        score = 0;
        lineNum = 0;
        Tetris::ResetSeed();
        for(int i=0; i<4; i++){
            Tetris* T = new Tetris;
            block_vec.push(T);
        }
        add(block_vec.front());
        updateshadow(block_vec.front());
        updatenext(1);
        return 1;
    }
}

void DataModel::add(Tetris* T)
{
    int x = T->GetX();
    int y = T->GetY();
    switch (T->GetType())
    {
    case O_MINO:
        setpool(x,y) = setpool(x+1,y+1) = setpool(x+1,y) = setpool(x,y+1) = T->GetType();
        break;

    case T_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x-1,y) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x,y-1) = T->GetType();
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y-1) = setpool(x-1,y) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x,y+1) = setpool(x,y-1) = T->GetType();
            break;
        }
        break;
    case S_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x,y+1) = setpool(x+1,y+1) = setpool(x-1,y) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x+1,y-1) = T->GetType();
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y-1) = setpool(x-1,y-1) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x-1,y+1) = setpool(x,y-1) = T->GetType();
            break;
        }
        break;
    case Z_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x,y+1) = setpool(x-1,y+1) = setpool(x+1,y) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x+1,y+1) = setpool(x,y-1) = T->GetType();
            break;
        case 2:
            setpool(x,y) = setpool(x-1,y) = setpool(x,y-1) = setpool(x+1,y-1) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x-1,y-1) = setpool(x,y+1) = T->GetType();
            break;
        }
        break;
    case J_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x-1,y+1) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x+1,y+1) = T->GetType();
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x+1,y-1) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x-1,y-1) = T->GetType();
            break;
        }
        break;
    case L_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x+1,y+1) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x+1,y-1) = T->GetType();
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x-1,y-1) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x-1,y+1) = T->GetType();
            break;
        }
        break;
    case I_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x-1,y) = setpool(x+1,y) = setpool(x+2,y) = T->GetType();
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x,y-2) = T->GetType();
            break;
        case 2:
            setpool(x-1,y) = setpool(x-2,y) = setpool(x+1,y) = setpool(x,y) = T->GetType();
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x,y+2) = T->GetType();
            break;
        }
        break;
    default:
        break;
    }
}

void DataModel::remove(Tetris* T)
{
    int x = T->GetX();
    int y = T->GetY();
    switch (T->GetType())
    {
    case O_MINO:
        setpool(x,y) = setpool(x+1,y+1) = setpool(x+1,y) = setpool(x,y+1) = EMPTY;
        break;
    
    case T_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x-1,y) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x,y-1) = EMPTY;
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y-1) = setpool(x-1,y) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x,y+1) = setpool(x,y-1) = EMPTY;
            break;
        }
        break;
    case S_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x,y+1) = setpool(x+1,y+1) = setpool(x-1,y) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y+1) = setpool(x+1,y-1) = EMPTY;
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x,y-1) = setpool(x-1,y-1) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x-1,y+1) = setpool(x,y-1) = EMPTY;
            break;
        }
        break;
    case Z_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x,y+1) = setpool(x-1,y+1) = setpool(x+1,y) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x+1,y) = setpool(x+1,y+1) = setpool(x,y-1) = EMPTY;
            break;
        case 2:
            setpool(x,y) = setpool(x-1,y) = setpool(x,y-1) = setpool(x+1,y-1) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x-1,y) = setpool(x-1,y-1) = setpool(x,y+1) = EMPTY;
            break;
        }
        break;
    case J_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x-1,y+1) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x+1,y+1) = EMPTY;
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x+1,y-1) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x-1,y-1) = EMPTY;
            break;
        }
        break;
    case L_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x+1,y+1) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x+1,y-1) = EMPTY;
            break;
        case 2:
            setpool(x,y) = setpool(x+1,y) = setpool(x-1,y) = setpool(x-1,y-1) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x-1,y+1) = EMPTY;
            break;
        
        }
        break;
    case I_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setpool(x,y) = setpool(x-1,y) = setpool(x+1,y) = setpool(x+2,y) = EMPTY;
            break;
        case 1:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x,y-2) = EMPTY;
            break;
        case 2:
            setpool(x-1,y) = setpool(x-2,y) = setpool(x+1,y) = setpool(x,y) = EMPTY;
            break;
        case 3:
            setpool(x,y) = setpool(x,y+1) = setpool(x,y-1) = setpool(x,y+2) = EMPTY;
            break;
        }
        break;
    default:
        break;
    }
}

bool DataModel::collide(Tetris* T)
{
    bool res = 0;
    int x = T->GetX();
    int y = T->GetY();
    switch (T->GetType())
    {
    case O_MINO:
        return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y+1)) || (!!pool(x+1,y+1));
        break;

    case T_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y+1)) || (!!pool(x-1,y));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1));
            break;
        case 2:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y-1)) || (!!pool(x-1,y));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x-1,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1));
            break;
        }
        break;
    case S_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x+1,y+1)) || (!!pool(x-1,y));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y+1)) || (!!pool(x+1,y-1));
            break;
        case 2:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x,y-1)) || (!!pool(x-1,y-1));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x-1,y)) || (!!pool(x-1,y+1)) || (!!pool(x,y-1));
            break;
        }
        break;
    case Z_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x-1,y+1)) || (!!pool(x+1,y));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x+1,y+1)) || (!!pool(x,y-1));
            break;
        case 2:
            return res = (!!pool(x,y)) || (!!pool(x-1,y)) || (!!pool(x,y-1)) || (!!pool(x+1,y-1));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x-1,y)) || (!!pool(x-1,y-1)) || (!!pool(x,y+1));
            break;
        }
        break;
    case J_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x-1,y)) || (!!pool(x-1,y+1));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x+1,y+1));
            break;
        case 2:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x-1,y)) || (!!pool(x+1,y-1));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x-1,y-1));
            break;
        }
        break;
    case L_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x-1,y)) || (!!pool(x+1,y+1));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x+1,y-1));
            break;
        case 2:
            return res = (!!pool(x,y)) || (!!pool(x+1,y)) || (!!pool(x-1,y)) || (!!pool(x-1,y-1));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x-1,y+1));
            break;
        }
        break;
    case I_MINO:
        switch (T->GetRotation())
        {
        case 0:
            return res = (!!pool(x,y)) || (!!pool(x-1,y)) || (!!pool(x+1,y)) || (!!pool(x+2,y));
            break;
        case 1:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x,y-2));
            break;
        case 2:
            return res = (!!pool(x-1,y)) || (!!pool(x-2,y)) || (!!pool(x+1,y)) || (!!pool(x,y));
            break;
        case 3:
            return res = (!!pool(x,y)) || (!!pool(x,y+1)) || (!!pool(x,y-1)) || (!!pool(x,y+2));
            break;
        }
        break;
    default:
        break;
    }
    
    return 0;
}

bool DataModel::down()
{
    if(lose) return 0;
    int lines = 0;
    Tetris *t = block_vec.front();
    int y = t->GetY();
    
    remove(t);
    t->SetY(y-1);
    // move down
    if(!collide(t)){ // no collision
        add(t);
    }
    else{ // collision
        t->SetY(y); // undo
        add(t);
        /* 消行检测 */
        for(int i=0; i<4; i++)
            lines += clearline();
        /* 固定 */
        solidify();
        lineNum += lines;
        addscore(lines);
        return 0;
    }
        
    return 1;
}

bool DataModel::clearline()
{
    bool clear = 0;
    for(int y=0; y<POOL_HEIGHT; y++){
        bool full = 1;
        for(int x=0; x<POOL_WIDTH; x++){
            full = (!!pool(x,y)) && full;
        }
        if(full){
            clear = 1;
            poolmovedown(y);
        }
    }
    return clear;
}

void DataModel::poolmovedown(int pos)
{
    for(int y=pos; y<POOL_HEIGHT-1; y++){
        for(int x=0; x<POOL_WIDTH; x++){
            setpool(x,y) = pool(x, y+1);
        }
    }
}

void DataModel::solidify()
{
    block_vec.pop();
    Tetris *newblock = new Tetris;
    block_vec.push(newblock);
    if(collide(block_vec.front())){
        lose = 1;
        setlosepool();
        m_notice_end->setParameter(0);
        m_notice_end->notice();
    }else{
        add(block_vec.front());
        updateshadow(block_vec.front());
        updatenext(1);
    }
}

bool DataModel::left()
{
    if(lose) return 0;
    Tetris* t = block_vec.front();
    int x = t->GetX();

    remove(t);
    t->SetX(x-1);
    // move down
    if(!collide(t)){ // no collision
        add(t);
    }
    else{ // collision
        t->SetX(x); //undo
        add(t);
    }
    updateshadow(t);

    return 1;
}

bool DataModel::right()
{
    if(lose) return 0;
    Tetris *t = block_vec.front();
    int x = t->GetX();

    remove(t);
    t->SetX(x+1);
    // move down
    if(!collide(t)){ // no collision
        add(t);
    }
    else{ // collision
        t->SetX(x); //undo
        add(t);
    }
    updateshadow(t);
    return 1;
}

bool DataModel::rotate()
{
    if(lose) return 0;
    Tetris *t = block_vec.front();
    int x = t->GetX();
    int y = t->GetY();
    int rot = t->GetRotation();

    remove(t);
    t->SetRotation((t->GetRotation()+1) % 4);

    switch (rot)
    {
    case 0:
        if(!collide(t)){ // test1
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x-1);    // test2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x-1);    // test3
        t->SetY(y+1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y-2);    // test4
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x-1);    // test5
        t->SetY(y-2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+3) % 4); //undo
        add(t);
        updateshadow(t);
        break;

    case 1:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x+1);    // test2 1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x+1);    // test3 1 -1
        t->SetY(y-1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y+2);    // test4 0 2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x+1);    // test5 1 2
        t->SetY(y+2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+3) % 4); //undo
        add(t);
        updateshadow(t);
        break;

    case 2:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x+1);    // test2 1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x+1);    // test3 1 1
        t->SetY(y+1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y-2);    // test4 0 -2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x+1);    // test5 1 -2
        t->SetY(y-2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+3) % 4); //undo
        add(t);
        updateshadow(t);
        break;
        
    case 3:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x-1);    // test2 -1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x-1);    // test3 -1 -1
        t->SetY(y-1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y+2);    // test4 0 2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x-1);    // test5 -1 2
        t->SetY(y+2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+3) % 4); //undo
        add(t);
        updateshadow(t);
        break;
    default:
        break;
    }

    return 0;
}

bool DataModel::counterrotate()
{
    if(lose) return 0;
    Tetris *t = block_vec.front();
    int x = t->GetX();
    int y = t->GetY();
    int rot = t->GetRotation();

    remove(t);
    t->SetRotation((t->GetRotation()+3) % 4);

    switch (rot)
    {
    case 0:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x+1);    // test2 1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x+1);    // test3 1 1
        t->SetY(y+1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y-2);    // test4 0 -2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x+1);    // test5 1 -2
        t->SetY(y-2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+1) % 4); //undo
        add(t);
        updateshadow(t);
        break;

    case 1:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x+1);    // test2 1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x+1);    // test3 1 -1
        t->SetY(y-1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y+2);    // test4 0 2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x+1);    // test5 1 2
        t->SetY(y+2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+1) % 4); //undo
        add(t);
        updateshadow(t);
        break;

    case 2:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x-1);    // test2 -1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x-1);    // test3 -1 1
        t->SetY(y+1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y-2);    // test4 0 -2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x-1);    // test5 -1 -2
        t->SetY(y-2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+1) % 4); //undo
        add(t);
        updateshadow(t);
        break;
        
    case 3:
        if(!collide(t)){ // test1 0 0
            add(t);
            updateshadow(t);
            return 1;
        }

        t->SetX(x-1);    // test2 -1 0
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
        }

        t->SetX(x-1);    // test3 -1 -1
        t->SetY(y-1);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        t->SetY(y+2);    // test4 0 2
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetY(y);
        }

        t->SetX(x-1);    // test5 -1 2
        t->SetY(y+2);
        if(!collide(t)){
            add(t);
            updateshadow(t);
            return 1;
        }else{
            t->SetX(x);
            t->SetY(y);
        }

        // no test passed
        t->SetRotation((t->GetRotation()+1) % 4); //undo
        add(t);
        updateshadow(t);
        break;
    default:
        break;
    }

    return 0;
}

bool DataModel::harddrop()
{
    if(lose) return 0;
    Tetris *t = block_vec.front();
    int lines = 0;
    
    remove(t);
    // move down
    while(!collide(t)){ // no collision
        t->SetY(t->GetY()-1);
    }
    // collision

    t->SetY(t->GetY()+1); // undo
    add(t);
    /* 消行检测 */
    for(int i=0; i<4; i++)
        lines += clearline();
    /* 固定 */
    lineNum += lines;
    addscore(lines);
    solidify();

    return 1;
}

bool DataModel::hold()
{
    if(lose) return 0;
    if(nullptr == hold_block) {
        hold_block = block_vec.front();
        remove(hold_block);
        solidify();
        block_vec.front()->SetX(4);
        block_vec.front()->SetY(20);
        block_vec.front()->SetRotation(0);
        add(block_vec.front());

        updatehold(hold_block);

        updateshadow(block_vec.front());
        return 1;
    }
    Tetris tmp = *hold_block;
    remove(block_vec.front());
    *hold_block = *block_vec.front();
    
    updatehold(hold_block);
    
    *block_vec.front() = tmp;
    block_vec.front()->SetX(4);
    block_vec.front()->SetY(20);
    block_vec.front()->SetRotation(0);
    add(block_vec.front());
    updateshadow(block_vec.front());

    return 1;
}

void DataModel::updateshadow(Tetris* T)
{
    if(lose) return ;
    delete []shadow;
    shadow = new int[POOL_WIDTH * POOL_HEIGHT]{0};

    int x = T->GetX();
    int y = T->GetY();
    
    // move down
    remove(T);
    while(!collide(T)){ // no collision
        T->SetY(T->GetY()-1);
    }
    int dest = T->GetY()+1;
    T->SetY(y);
    add(T);
    
    y = dest;
    
    switch (T->GetType())
    {
    case O_MINO:
        setshadow(x,y) = setshadow(x+1,y+1) = setshadow(x+1,y) = setshadow(x,y+1) = T->GetType();
        break;

    case T_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x,y+1) = setshadow(x-1,y) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x,y+1) = setshadow(x,y-1) = T->GetType();
            break;
        case 2:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x,y-1) = setshadow(x-1,y) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x-1,y) = setshadow(x,y+1) = setshadow(x,y-1) = T->GetType();
            break;
        }
        break;
    case S_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x+1,y+1) = setshadow(x-1,y) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x,y+1) = setshadow(x+1,y-1) = T->GetType();
            break;
        case 2:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x,y-1) = setshadow(x-1,y-1) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x-1,y) = setshadow(x-1,y+1) = setshadow(x,y-1) = T->GetType();
            break;
        }
        break;
    case Z_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x-1,y+1) = setshadow(x+1,y) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x+1,y+1) = setshadow(x,y-1) = T->GetType();
            break;
        case 2:
            setshadow(x,y) = setshadow(x-1,y) = setshadow(x,y-1) = setshadow(x+1,y-1) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x-1,y) = setshadow(x-1,y-1) = setshadow(x,y+1) = T->GetType();
            break;
        }
        break;
    case J_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x-1,y) = setshadow(x-1,y+1) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x+1,y+1) = T->GetType();
            break;
        case 2:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x-1,y) = setshadow(x+1,y-1) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x-1,y-1) = T->GetType();
            break;
        }
        break;
    case L_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x-1,y) = setshadow(x+1,y+1) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x+1,y-1) = T->GetType();
            break;
        case 2:
            setshadow(x,y) = setshadow(x+1,y) = setshadow(x-1,y) = setshadow(x-1,y-1) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x-1,y+1) = T->GetType();
            break;
        }
        break;
    case I_MINO:
        switch (T->GetRotation())
        {
        case 0:
            setshadow(x,y) = setshadow(x-1,y) = setshadow(x+1,y) = setshadow(x+2,y) = T->GetType();
            break;
        case 1:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x,y-2) = T->GetType();
            break;
        case 2:
            setshadow(x-1,y) = setshadow(x-2,y) = setshadow(x+1,y) = setshadow(x,y) = T->GetType();
            break;
        case 3:
            setshadow(x,y) = setshadow(x,y+1) = setshadow(x,y-1) = setshadow(x,y+2) = T->GetType();
            break;
        }
        break;
    default:
        break;
    }
}

bool DataModel::pause()
{
    return 1;
}

bool DataModel::setting()
{
    return 1;
}

void DataModel::updatehold(Tetris* T)
{
    for(int i=0; i<16; i++)
        hold_mat[i] = 0;

    int x=1, y=1;
    switch (T->GetType())
    {
    case O_MINO:
        hold_mat[5] = hold_mat[6] = hold_mat[9] = hold_mat[10] = T->GetType();
        break;
    case T_MINO:
        setholdmat(x,y) = setholdmat(x+1,y) = setholdmat(x,y+1) = setholdmat(x-1,y) = T->GetType();
        break;
    case S_MINO:
        setholdmat(x,y) = setholdmat(x,y+1) = setholdmat(x+1,y+1) = setholdmat(x-1,y) = T->GetType();
        break;
    case Z_MINO:
        setholdmat(x,y) = setholdmat(x,y+1) = setholdmat(x-1,y+1) = setholdmat(x+1,y) = T->GetType();
        break;
    case J_MINO:
        setholdmat(x,y) = setholdmat(x+1,y) = setholdmat(x-1,y) = setholdmat(x-1,y+1) = T->GetType();
        break;
    case L_MINO:
        setholdmat(x,y) = setholdmat(x+1,y) = setholdmat(x-1,y) = setholdmat(x+1,y+1) = T->GetType();
        break;
    case I_MINO:
        setholdmat(x,y) = setholdmat(x-1,y) = setholdmat(x+1,y) = setholdmat(x+2,y) = T->GetType();
        break;
    default:
        break;
    }
}

void DataModel::updatenext(int a)
{
    while (!next_mat_vec.empty()) next_mat_vec.pop();
    Tetris* tmp = block_vec.front();
    block_vec.pop();
    block_vec.push(tmp);
    for(unsigned int i=a; i<block_vec.size(); i++){
        Tetris* T = block_vec.front();
        block_vec.pop();
        block_vec.push(T);

        int *next_mat = new int[MAT_WIDTH * MAT_HEIGHT]{0};
        int x=1, y=1;
        switch (T->GetType())
        {
        case O_MINO:
            next_mat[5] = next_mat[6] = next_mat[9] = next_mat[10] = T->GetType();
            break;
        case T_MINO:
            setnextmat(x,y) = setnextmat(x+1,y) = setnextmat(x,y+1) = setnextmat(x-1,y) = T->GetType();
            break;
        case S_MINO:
            setnextmat(x,y) = setnextmat(x,y+1) = setnextmat(x+1,y+1) = setnextmat(x-1,y) = T->GetType();
            break;
        case Z_MINO:
            setnextmat(x,y) = setnextmat(x,y+1) = setnextmat(x-1,y+1) = setnextmat(x+1,y) = T->GetType();
            break;
        case J_MINO:
            setnextmat(x,y) = setnextmat(x+1,y) = setnextmat(x-1,y) = setnextmat(x-1,y+1) = T->GetType();
            break;
        case L_MINO:
            setnextmat(x,y) = setnextmat(x+1,y) = setnextmat(x-1,y) = setnextmat(x+1,y+1) = T->GetType();
            break;
        case I_MINO:
            setnextmat(x,y) = setnextmat(x-1,y) = setnextmat(x+1,y) = setnextmat(x+2,y) = T->GetType();
            break;
        default:
            break;
        }
        next_mat_vec.push(next_mat);
    }
}

void DataModel::addscore(int n)
{
    switch (n)
    {
    case 1:
        score += 100;
        break;
    case 2:
        score += 300;
        break;
    case 3:
        score += 500;
        break;
    case 4:
        score += 700;
        break;
    default:
        break;
    }
}

void DataModel::setlosepool()
{
    for(int i=0; i<POOL_SIZE; i++) pool[i] = EMPTY;
    for(int i=0; i<POOL_SIZE; i++) shadow[i] = EMPTY;
    for(int i=0; i<16; i++)        hold_mat[i] = EMPTY;
    while (!next_mat_vec.empty()) next_mat_vec.pop();

    setpool(0,0) = setpool(1,0) = setpool(2,0) = setpool(5,0) = setpool(6,0) = 
    setpool(0,1) = setpool(0,2) = setpool(0,3) = setpool(0,4) = setpool(0,0) = 
    setpool(5,2) = setpool(5,3) = setpool(6,2) = setpool(6,4) = setpool(7,1) = 
    setpool(7,2) = setpool(7,4) = setpool(3,7) = setpool(3,8) = setpool(4,6) = 
    setpool(4,9) = setpool(5,6) = setpool(5,9) = setpool(6,7) = setpool(6,8) = I_MINO;

    setpool(3,0) = setpool(8,0) = setpool(9,0) = setpool(2,1) = setpool(4,1) = 
    setpool(8,1) = setpool(2,2) = setpool(4,2) = setpool(8,2) = setpool(9,2) = 
    setpool(2,3) = setpool(4,3) = setpool(8,3) = setpool(3,4) = setpool(8,4) = 
    setpool(9,4) = setpool(1,6) = setpool(7,6) = setpool(8,6) = setpool(9,6) = 
    setpool(1,7) = setpool(7,7) = setpool(9,7) = setpool(0,8) = setpool(2,8) =
    setpool(7,8) = setpool(9,8) = setpool(0,9) = setpool(2,9) = setpool(7,9) = 
    setpool(9,9) = O_MINO;
}
