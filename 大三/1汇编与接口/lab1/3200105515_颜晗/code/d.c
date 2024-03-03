/**
 * 结构体探究
*/
typedef struct point{
    int x;
    int y;
    int index;
    int value;
}point;

typedef struct line{
    struct point points[2];
    int num;
}line;


point globalp;
line globalc;

int query(point a,point b)
{
    return a.x*b.x;
}
int queryl(line a)
{
    return a.points[1].index-a.points[0].index;
}

int main()
{
    point localp;
    line locall={1,2};
    int local;

    local = query(localp,globalp);
    local = queryl(locall);

    return query(localp,localp);

}