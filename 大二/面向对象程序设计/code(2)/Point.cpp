class Point {
public:
    void init(int x,int y);
    void move(int dx,int dy) const;
    void print() const;
private:
    int x;
    int y;
};



int main()
{
	Point a;
	a.init(20,30);
	a.move(10,15);
	a.print();
}