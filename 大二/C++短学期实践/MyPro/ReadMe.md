# ReadMe

Tetris

1. 只使用智能指针，不能用普通指针多次复制
2. 功能

>初级、中级、高级、自定义、作弊

3. 

## 需求

**界面**

>开始界面？
>
>分数排行榜？
>
>
>
>
>
>方块池显示（加颜色……）
>
>分数
>
>时间
>
>下一个区
>
>操作提示

**功能**

>方块生成、移入
>
>随时间加速
>
>旋转
>
>加速下滑、硬降
>
>hold,暂存
>
>消除
>
>记录分数





## 框架

```c++
//app
class app{
public:
   	app() //构造 初始化三个层(分配内存)，进行连接 
    run() //执行 显示界面
        
private:
	std::shared_ptr<MainWindow> view;
    std::shared_ptr<Model> model;
    std::shared_ptr<ViewModel> viewmodel;  
}


//common 
class tetris{
    
};//方块
class TetrisPool{
    
};//方块池


//view
/*
接受鼠标（……）、键盘事件
设置`comand`(仅作为成员、函数、使用，不用实现)(单个or继承) single
设置`notificatoin`e(显示提示信息，速度加快(……)，输了，是否重启)

*/


//model viewmodel
/*
实现command(即响应键盘事件)
根据状态发送通知

*/


// model建立command，view获取指针
// view建立通知，反馈model操作数据

```



