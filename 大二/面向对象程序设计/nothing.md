## nothing

### 构造析构

**构造顺序**

>调用基类构造函数，调用顺序按照它们 **被继承时声明的顺序** （从左到右）；
>
>调用内嵌成员对象的构造函数，调用顺序按照它们**在类中声明**的顺序；
>
>派生类自己构造函数体中的内容。



### 继承、虚函数、纯虚函数、抽象类

![img](https://img-blog.csdnimg.cn/413679f347e84b709c7104781cbcb092.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3hpdXBvbmc=,size_16,color_FFFFFF,t_70)

>基类中的私有成员
>不能被派生类继承
>**不能**被派生类的成员函数**直接访问**
>可通过定义于基类的**公有和受保护成员函数**访问

 C++中虚函数是[动态绑定](https://so.csdn.net/so/search?q=动态绑定&spm=1001.2101.3001.7020)的（其它一般都是静态绑定的），但是如果其使用了默认实参，默认实参是静态绑定的。

>定义一个函数为虚函数，不代表函数为不被实现的函数。
>
>定义他为虚函数是为了允许用基类的指针来调用子类的这个函数。
>
>定义一个函数为纯虚函数，才代表函数没有被实现。
>
>定义纯虚函数是为了实现一个接口，起到一个规范的作用，规范继承这个类的程序员必须实现这个函数。
>
>



### 重载

不能重载：`?:`    `.`      `::`    `sizeof`







### 各种容器

##### vector

```c++
```



##### map

```c++
```





##### queue   priority_queue

```c++
```





##### set

```c++
```



##### list 双向链表

```c++
```



### string 类







### 重载

>1. **下列运算符只能通过成员函数进行重载**
>
>- =：赋值运算符
>- （）：函数调用运算符
>- []：下标运算符
>- ->：通过指针访问类成员的运算符
>
>```c++
>Complex Complex::operator ++() {
>    ++i;
>    ++j;
>    return *this;
>}
>
>Complex Complex::operator ++(int) {//后置
>    Complex temp =*this;
>    ++*this;
>    return temp;
>}
>```
>
>



复制构造函数的参数加不加 const 对本程序來说都一样。但加上 const 是更好的做法，这样复制构造函数才能接受常量对象作为参数，即才能以常量对象作为参数去初始化别的对象。



复制构造函数

当用一个对象去初始化同类的另一个对象时，会引发复制构造函数被调用。

如果函数 F 的参数是类 A 的对象，那么当 F 被调用时，类 A 的复制构造函数将被调用。换句话说，作为形参的对象，是用复制构造函数初始化的，而且调用复制构造函数时的参数，就是调用函数时所给的实参。

如果函数的返冋值是类 A 的对象，则函数返冋时，类 A 的复制构造函数被调用。换言之，作为函数返回值的对象是用复制构造函数初始化 的，而调用复制构造函数时的实参，就是 return 语句所返回的对象。





















































































































