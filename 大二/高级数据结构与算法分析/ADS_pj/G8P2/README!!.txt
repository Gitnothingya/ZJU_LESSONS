include 存放头文件，即source.h
src 存放函数实现文件，source.c

data 用于存储网站下载的数据文件，提交仅余小组自制小型图test.txt
从网站上下载的文件需经过简单编辑，开头无用信息已删除，仅剩余节点数与边数。具体格式见data.jpg
query 存放查询所需的起始与目标点，提交时为空
result 存放最短路径结果，便于检查核对，提交时为空


编译环境：
MinGW + vs code
终端切换到对应G8P2文件夹，运行 make/mingw32-make 命令。