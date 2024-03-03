/*
 * @Author: your name
 * @Date: 2022-03-13 23:10:48
 * @LastEditTime: 2022-03-18 17:02:39
 * @LastEditors: Please set LastEditors
 * @Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 * @FilePath: \0cpptestd:\1学习文件\面向对象程序设计\code(3)\vector.cpp
 */
#include <iostream>

using namespace std;
#include <vector>

int main( ) {
        vector<int> x;
        for (int a=0; a<1000; a++)
                x.push_back(a);
        vector<int>::iterator p;
        for (p=x.begin(); p<x.end(); p++)
                cout << *p << " ";
        return 0;
}