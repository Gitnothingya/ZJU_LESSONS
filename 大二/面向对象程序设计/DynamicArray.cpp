#include <iostream>
using namespace std;

class DynamicArray
{
public:
    explicit DynamicArray(int size) : m_size{size}, m_array{new int[size]}
    {
        cout << "Constructor: dynamic array is created!\n";
    }
    virtual ~DynamicArray()
    {
        delete[] m_array;
        cout << "Destructor: dynamic array is destroyed!\n";
    }
    // 拷贝构造函数
    DynamicArray(const DynamicArray &rhs) : m_size{rhs.m_size}
    {
        m_array = new int[m_size];
        for (int i = 0; i < m_size; ++i)
            m_array[i] = rhs.m_array[i];
        cout << "Copy constructor: dynamic array is created!\n";
    }
    // 拷贝赋值运算符
    DynamicArray &operator=(const DynamicArray &rhs)
    {
        cout << "Copy assignment operator is called\n";
        if (this == &rhs)
            return *this;
        delete[] m_array;
        m_size = rhs.m_size;
        m_array = new int[m_size];
        for (int i = 0; i < m_size; ++i)
            m_array[i] = rhs.m_array[i];
        return *this;
    }
    // 移动构造函数 
    DynamicArray(DynamicArray&& rhs) : m_size{rhs.m_size}, m_array{rhs.m_array}
    {
        rhs.m_size = 0;
        rhs.m_array = nullptr;
        cout << "Move constructor: dynamic array is moved!\n";
    }
    // 移动赋值运算符
    DynamicArray &operator=(DynamicArray &&rhs)
    {
        cout << "Move assignment operator is called\n";
        if (this == &rhs)
            return *this;
        delete[] m_array;
        m_size = rhs.m_size;
        m_array = rhs.m_array;
        rhs.m_size = 0;
        rhs.m_array = nullptr;
        return *this;
    }
    // 索引运算符
    int &operator[](int index)
    {
        // 不进⾏边界检查
        return m_array[index];
    }
    const int &operator[](int index) const
    {
        return m_array[index];
    }
    int size() const { return m_size; }

private:
    int *m_array;
    int m_size;
};

// 生产int动态数组的⼯厂函数
DynamicArray arrayFactor(int size)
{
    cout << "entering arrayfactor" << endl;
    DynamicArray arr{size};
    for (int i = 0; i < size; i++)
    {
        arr[i] = i;
    }
    cout << "leaving arrayfactor" << endl;
    return arr;
}

int main()
{
    DynamicArray arr = arrayFactor(10);
    for (int i = 0; i < 10; i++)
    {
        cout << arr[i] << endl;
    }
    return 0;
}
