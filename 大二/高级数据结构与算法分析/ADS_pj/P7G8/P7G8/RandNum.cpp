#include <algorithm>
#include <cmath>
#include <random>
#include <vector>
#include <iostream>
#include <fstream>

using namespace std;

void ShuffleArray(std::vector<int> &array) {
  std::random_device rd;
  std::mt19937 rng(rd());
  std::shuffle(array.begin(), array.end(), rng);
}

int main()
{
    int n = 1000000;
    vector<int> num;
    for(int i = 1; i <= n; i++) {
        num.push_back(i);
    }
    ShuffleArray(num);
    ofstream ofs;
    ofs.open("data1/Rln1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs << num[i] << endl;
    }
    ofs.close();
    ShuffleArray(num);
    ofstream ofs2;
    ofs2.open("data1/De1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs2 << num[i] << endl;
    }
    ofs2.close();

    ShuffleArray(num);
    ofstream ofss;
    ofss.open("data2/Rln1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofss << num[i] << endl;
    }
    ofss.close();
    ShuffleArray(num);
    ofstream ofsf;
    ofsf.open("data2/De1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofsf << num[i] << endl;
    }
    ofsf.close();

    ShuffleArray(num);
    ofstream ofs3;
    ofs3.open("data3/Rln1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs3 << num[i] << endl;
    }
    ofs3.close();
    ShuffleArray(num);
    ofstream ofs4;
    ofs4.open("data3/De1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs4 << num[i] << endl;
    }
    ofs4.close();

    ShuffleArray(num);
    ofstream ofs5;
    ofs5.open("data4/Rln1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs5 << num[i] << endl;
    }
    ofs5.close();
    ShuffleArray(num);
    ofstream ofs6;
    ofs6.open("data4/De1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs6 << num[i] << endl;
    }
    ofs6.close();

    ShuffleArray(num);
    ofstream ofs7;
    ofs7.open("data5/Rln1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs7 << num[i] << endl;
    }
    ofs7.close();
    ShuffleArray(num);
    ofstream ofs8;
    ofs8.open("data5/De1000000.txt",ios::out);
    for(int i = 0; i < n; i++) {
        ofs8 << num[i] << endl;
    }
    ofs8.close();
    return 0;
}