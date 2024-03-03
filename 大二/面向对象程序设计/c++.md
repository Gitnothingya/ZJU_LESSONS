## 碎碎念

​	头文件，名称空间、STL、

>1.Everything is an object.
>2.A program is a bunch of objects telling each other what to do by sending messages.
>3.Each object has its own memory made up of other objects.
>4.Every object has a type.
>5.All objects of a particular type can receive the same messages.


## 输入输出

```c++
#include <iostream>//头文件
using namespace std;//添加命名空间，否则使用都要带上 std::

//输入
cin>> type0 >>type1 //遇到空白（空格、制表符、换行符）会结束输入，同时忽略并清除
    //
cin.getline(char [],size_t )//输入字符串数组，后一个参数为字符串数组大小，或限定输入长度。不会忽视空白符，也即会形成空串。



```





## string 类

```c++
#include<iostream>
#include<string>
using namespace std;

int main()
{
    string str1;
    string str2;
    string s;//普通声明，默认初始化为空串。
    
    
    string s = "123456";
    string s = str ;//用另一个string串初始化。
    
    
    
    
}


```











## 内存分配



## 初始化（构造）与析构

```c++
//基础类型 int char ，以及通用初始化方法


```






## 源文件与编译

#### 头文件

头文件里只放声明：
1.extern variables
2.function prototypes
3.class/struct declaration
4.inline function

```c++
//标准头文件结构
#ifndef HEADER_FLAG
#define HEADER_FLAG
//Type declaration...
#endif
```

Tips for header
1.每个类声明分别放在一个的头文件中
2.对应一个头文件有一个前缀相同的源文件
3.头文件必须采用标准结构来防止重复声明变量和结构体

