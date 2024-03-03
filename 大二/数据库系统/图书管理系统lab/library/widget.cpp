#include "widget.h"
#include <iostream>
#include <fstream>
#include <QFileDialog>
using namespace std;
Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
    //指针与数据初始化
    Type = 0;

    //设置主界面布局
    setMainLayout();

    //连接数据库
    Dataconnect();



}

Widget::~Widget()
{
    db.close();
}

void Widget::setMainLayout()
{
    setTopTitle();//建立顶部显示栏

    setFuncWindow();//建立主要功能界面

}

bool Widget:: Dataconnect()
{
     db = QSqlDatabase::addDatabase("QODBC");  //连接的MYSQL的数据库驱动
     db.setHostName("localhost");         //主机名
     db.setPort(3306);                    //端口
     db.setDatabaseName("libmanager");       //设置的数据源名
     db.setUserName("root");              //用户名
     db.setPassword("yh1626");            //密码
     db.open();
     if(!db.open()){
         QMessageBox::critical(0,QObject::tr("error"),db.lastError().text());
         return false;
     }
    return true;
}


void Widget::setTopTitle()
{
    QPalette palette;
    loginbutton = new QPushButton(tr("登录"));
    registerbutton = new QPushButton(tr("注册"));//两按钮
    userTypeLabel = new QLabel();
    newlineLabel = new QLabel("\n\n");
    vboxLayout0 = new QVBoxLayout();
    hboxLayout2 = new QHBoxLayout();
    hboxLayout3 = new QHBoxLayout();
    titleImage = new QWidget();
    mainWindow = new QWidget();
    vboxLayout3 = new QVBoxLayout();
    mainTabWidget = new QTabWidget();//布局与窗口初始化

    //登录注册按钮透明，大小固定
    registerbutton->setFlat(true);
    registerbutton->setFixedSize(QSize(60,30));
    loginbutton->setFlat(true);
    loginbutton->setFixedSize(QSize(60,30));

    //建立信号与槽
    //点击注册按钮，显示注册窗口
    connect(registerbutton,SIGNAL(clicked()),this,SLOT(setWindowRegister()));
    //点击登录按钮，显示登录窗口
    connect(loginbutton,SIGNAL(clicked()),this,SLOT(setWindowLogin()));

    //图片加载
    QDir d;
    titleImage->setAutoFillBackground(true);
    palette.setBrush(QPalette::Window,QBrush(QPixmap(d.currentPath()+"/top.jpg")));
    titleImage->setPalette(palette);
    titleImage->setLayout(hboxLayout2);

    //信息标签与按钮栏
    hboxLayout3->addWidget(userTypeLabel);
    hboxLayout3->addWidget(loginbutton);
    hboxLayout3->addWidget(registerbutton);

    vboxLayout3->addWidget(newlineLabel );
    vboxLayout3->addLayout(hboxLayout3);

    hboxLayout2->addStretch();
    hboxLayout2->addLayout(vboxLayout3 );


    //将标题图片和标签窗口加入总布局
    vboxLayout0->addWidget(titleImage);
    vboxLayout0->addWidget(mainTabWidget);

    mainWindow->setAutoFillBackground(true);
    mainWindow->setLayout(vboxLayout0);
    mainWindow->setWindowTitle(tr("颜晗的图书管理系统"));
    mainWindow->setFixedSize(960,620);

    mainWindow->show();

}

void Widget:: setWindowLogin()
{
    loginbutton ->setDisabled(true);
    loginbutton ->setDisabled(true);

    manager_loginWidget = new QWidget();//整体窗口
    QLabel *username_label = new QLabel();//账号
    QLabel *password_label = new QLabel();//密码
    QGridLayout *glayout = new QGridLayout();//网格排版
    QPushButton *yesbutton = new QPushButton(tr("确定"));//确定按钮
    QPushButton *quitbutton = new QPushButton(tr("退出"));//退出按钮
    QHBoxLayout *hlayout = new QHBoxLayout();//底部确认与退出
    QVBoxLayout *vlayout = new QVBoxLayout();//中间信息栏

    username = new QLineEdit();
    password = new QLineEdit();
    password->setEchoMode(QLineEdit::Password);
    glayout->addWidget(username,1,2);
    glayout->addWidget(password,2,2);

    //表格布局与文字标签
    username_label->setText(tr("账号"));
    password_label->setText(tr("密码"));
    glayout->setContentsMargins(50,100,50,100);
    glayout->setSpacing(40);
    glayout->addWidget(username_label,1,1);
    glayout->addWidget(password_label,2,1);

    //加入按钮和输入栏
    hlayout->addStretch();
    hlayout->addWidget(yesbutton);
    hlayout->addWidget(quitbutton);
    hlayout->addStretch();//两端弹簧，保持中间布置
    vlayout->addLayout(glayout);
    vlayout->addLayout(hlayout);

    manager_loginWidget ->setLayout(vlayout);

    //点击退出按钮，进行删除登录窗口操作
    connect(quitbutton,SIGNAL(clicked()),this,SLOT(deleteLogin()));

    //点击登录或输完密码后回车进入登录确认。
    connect(yesbutton,SIGNAL(clicked()),this,SLOT(managerLogin()));
    connect(password,SIGNAL(returnPressed()),this,SLOT(managerLogin()));

    manager_loginWidget->setWindowTitle(tr("管理员登录"));
    manager_loginWidget->show();
    //manager_loginWidget->setWindowFlags(windowFlags()|Qt::FramelessWindowHint|Qt::WindowTitleHint);
    //manager_loginWidget->setWindowFlags(windowFlags()&~Qt::WindowCloseButtonHint);
}
void Widget:: setWindowRegister()
{
}

void Widget:: managerLogin()
{
    QSqlQuery query = QSqlQuery();
    QString str = username->text();
    query.exec("select password from manager where username = '"+str+"'");

    if(!query.isActive()){
        return;
    }

    //判断密码是否与结果一致h
    if(query.next()){
        QString sel_password = query.value(0).toString();
        if(QString::compare(sel_password,password->text())!=0){
            QMessageBox::critical(NULL, "Error", "密码错误",
                                  QMessageBox::Yes);
            return;
        }
    }

    //如果数据库中没有此用户名，给出警告
    else{
        QMessageBox::critical(NULL, "Error", "该用户名不存在",
                              QMessageBox::Yes);
        return;
    }

    Type =1;
    //更新标题栏信息
    updateTitle();

    //添加借书证管理窗口
    setWindowCardManage();
    //添加借阅信息管理窗口
    setWindowInfoManager();

    //在分页栏中加入以上窗口
    mainTabWidget->addTab(window2,"借书证管理");
    mainTabWidget->addTab(window3,"借阅信息管理");
}

void Widget:: quitLogin()
{
    //删除退出登录按钮
    delete quitloginbutton;

    //根据当前使用者的不同，删除窗口以及控件
    delete window3;
    delete window2;


    QString text = "当前用户: 游客";
    //更新使用者类型为游客
    Type = 0;
    current_user = "游客";
    userTypeLabel->setText(text);

    //重新建立登录注册按钮，并摆放
    loginbutton = new QPushButton("登录");
    registerbutton = new QPushButton("注册");
    loginbutton->setFlat(true);
    registerbutton->setFlat(true);
    registerbutton->setFixedSize(QSize(60,30));
    loginbutton->setFixedSize(QSize(60,30));
    hboxLayout3->addWidget(loginbutton);
    hboxLayout3->addWidget(registerbutton);

    //重新连接登录注册与对应的槽函数
    connect(loginbutton,SIGNAL(clicked()),this,SLOT(setWindowLogin()));
    connect(registerbutton,SIGNAL(clicked()),this,SLOT(setWindowRegister()));

}

void Widget::deleteLogin()
{
    delete manager_loginWidget;
    loginbutton->setEnabled(true);
    registerbutton->setEnabled(true);
}

void Widget::setFuncWindow()
{
    window1 = new QWidget();
    searchLayout  = new  QGridLayout();
    vboxLayout1 = new QVBoxLayout();
    vboxLayout = new QVBoxLayout();

    hboxLayout1 = new QHBoxLayout();
    hboxLayout = new QHBoxLayout();

    searchinfo = new QGroupBox();
    searchbutt = new QGroupBox();
    QPushButton *clearbutton = new QPushButton(tr("清空"));
    QPushButton *searchbutton = new QPushButton(tr("搜索"));
    booktable = new QTableWidget();

    //建立信号与槽
    //点击搜索按钮，进行搜索操作
    connect(searchbutton,SIGNAL(clicked()),this,SLOT(searchBook()));
    //点击清除按钮，进行清除操作
    connect(clearbutton,SIGNAL(clicked()),this,SLOT(searchclear()));

    updateTitle();

    //设置搜索栏
    bno_e = new QLineEdit();
    nameLine = new QLineEdit();
    publishLine = new QLineEdit();
    authorLine = new QLineEdit();
    dateBox = new QComboBox();
    dateBox1 = new QComboBox();
    priceLine = new QLineEdit();
    priceLine1 = new QLineEdit();
    categoryLine = new QLineEdit();

    QLabel *label = new QLabel[9];
    QString str[] = {"编号","书名","作者","年份","  --","出版社","价位","  --","类别"};

    for(int i=0;i<9;i++){
        label[i].setText(str[i]);
        searchLayout->addWidget(label+i,i/3+1,2*(i%3)+1);
    }

    //年份信息表的初始化2022下至60年。
    dateBox->addItem("    ");
    dateBox1->addItem("    ");
    for(int i=0;i<60;i++){
        dateBox->addItem(QString::number(2022-i));
        dateBox1->addItem(QString::number(2022-i));
    }

    //表格布局，放置搜索选项
    searchLayout->addWidget(bno_e,1,2);         //书号
    searchLayout->addWidget(nameLine,1,4);       //书名
    searchLayout->addWidget(authorLine,1,6);     //作者名称
    searchLayout->addWidget(dateBox,2,2);        //年份（起）
    searchLayout->addWidget(dateBox1,2,4);       //年份（终）
    searchLayout->addWidget(publishLine,2,6);    //出版商
    searchLayout->addWidget(priceLine,3,2);     //价格（从）
    searchLayout->addWidget(priceLine1,3,4);     //价格（到）
    searchLayout->addWidget(categoryLine,3,6);    //类型

    //搜索选项加入群组中
    searchinfo->setLayout(searchLayout);
    searchinfo->setFixedSize(600,140);

    //垂直布局，放置两个按钮
    vboxLayout1->addStretch();
    vboxLayout1->addWidget(searchbutton);
    vboxLayout1->addWidget(clearbutton);
    vboxLayout1->addStretch();

    searchbutt->setLayout(vboxLayout1);
    searchbutt->setFixedSize(100,140);

    //水平布局，依次加入搜索选项和按钮的垂直布局
    hboxLayout1->addWidget(searchinfo);
    hboxLayout1->setSpacing(10);
    hboxLayout1->addWidget(searchbutt);

    //垂直布局，依次加入搜索框和显示框
    vboxLayout->addLayout(hboxLayout1);
    vboxLayout->addWidget(booktable);

    updateShowBookWindow();

    vboxLayout2 = new QVBoxLayout();//整个显示窗口
    displayBox = new QGroupBox("功能面板");//单册显示窗口

    listBook = new QListWidget();//展示图书信息流
    borrowButt = new QPushButton(tr("借书"));//借书按钮
    backButt = new QPushButton(tr("还书"));//还书按钮
    addSingleButt =new QPushButton(tr("单册入库"));
    addMultiButt  =new QPushButton(tr("批量入库"));

    QGridLayout *bobackbutton = new QGridLayout();

    //两个按钮加入布局
    bobackbutton ->addWidget(borrowButt);
    bobackbutton ->addWidget(backButt);
    bobackbutton ->addWidget(addSingleButt);
    bobackbutton ->addWidget(addMultiButt);

    vboxLayout2 ->addWidget(listBook,4);//功能面板排布
    vboxLayout2 ->addLayout(bobackbutton,2);

    displayBox -> setLayout(vboxLayout2);

    //借书按钮功能
    connect(borrowButt,SIGNAL(clicked()),this,SLOT(Borrowfuct()));
    //还书按钮功能
    connect(backButt,SIGNAL(clicked()),this,SLOT(Backfuct()));
    //单册入库
    connect(addSingleButt,SIGNAL(clicked()),this,SLOT(addSingleWin()));
    //批量入库
    connect(addMultiButt,SIGNAL(clicked()),this,SLOT(addMultiWin()));

    //水平布局，加入左边栏和右窗口
    hboxLayout->addLayout(vboxLayout);
    hboxLayout->addWidget(displayBox);


    //窗口1加入主界面整体布局
    window1->setLayout(hboxLayout);
    mainTabWidget->addTab(window1,"图书管理");
}
void Widget::updateTitle()
{
    QString text;
    if(Type==0){
        text = "当前用户：游客 ";
        userTypeLabel->setText(text);
        return;
    }

    //登录后删除登录、注册按钮
    delete loginbutton;
    delete registerbutton;

    //新建退出登录按钮，点击退出登录按钮，进行退出登录操作
    quitloginbutton = new QPushButton("退出登录");
    connect(quitloginbutton,SIGNAL(clicked()),this,SLOT(quitLogin()));//关联退出登录处理
    hboxLayout3->addWidget(quitloginbutton);

    quitloginbutton->setFlat(true);

    text = "当前用户："+username->text();
    current_user = username->text();
    userTypeLabel->setText(text);
    //删除登录窗口
    delete manager_loginWidget;
}

void Widget::updateShowBookWindow()//图书查询表更新
{
    QStringList header;
    booktable -> clear();
    booktable ->setRowCount(0);

    //设置表格为不可修改，单行选择
    booktable->setEditTriggers(QAbstractItemView::NoEditTriggers);
    booktable->setSelectionBehavior ( QAbstractItemView::SelectRows); //设置选择行为，以行为单位
    booktable->setSelectionMode ( QAbstractItemView::SingleSelection); //设置选择模式，选择单行

    int lie=9;
    booktable->setColumnCount(lie);
    header<<"编号"<<"书名"<<"类型"<<"作者"<<"价格"
         <<"库存"<<"出版社"<<"出版年份"<<"库存总量";
    //加入标题栏
    booktable->setHorizontalHeaderLabels(header);

    //设置宽度
    for(int i=0;i<lie;i++){
        booktable->setColumnWidth(i,120);
    }

    //最大显示数
    int max = result.size()/lie;
    //显示图书信息
    for(int i=0;i<max;i++){
        int row = booktable->rowCount();
        booktable->setRowCount(row+1);//新增一行
        //填补新一行数据
        for(int j=0;j<lie;j++){
            QTableWidgetItem *item = new QTableWidgetItem(result.at(lie*i+j));
            booktable->setItem(i,j,item);//填补新一行数据
            booktable->item(i,j)->setTextAlignment(Qt::AlignHCenter|Qt::AlignVCenter);
        }
    }
    result.clear();
    connect(booktable,&QTableWidget::cellClicked,this,&Widget::displayBook);
}


void Widget::displayBook(int row)
{
    listBook->clear();
    listBook->addItem("编号："+booktable->item(row,0)->text());
    listBook->addItem("书名："+booktable->item(row,1)->text());
    listBook->addItem("类型："+booktable->item(row,2)->text());
    listBook->addItem("作者："+booktable->item(row,3)->text());
    listBook->addItem("价格："+booktable->item(row,4)->text());
    listBook->addItem("库存："+booktable->item(row,5)->text());
    listBook->addItem("出版社："+booktable->item(row,6)->text());
    listBook->addItem("出版年份："+booktable->item(row,7)->text());
    listBook->addItem("藏书总量："+booktable->item(row,8)->text());
}



void Widget::Borrowfuct()
{
    if(Type==0){
        QMessageBox::critical(0,QObject::tr("error"),"您目前无借书权限，请先登录！");
        return;
    }
    BorrowWidget = new QWidget();
    QLabel *BookNo = new QLabel(tr("书籍编号"));//书编号
    QLabel *ReaderNo = new QLabel(tr("读书证号"));//读书证编号
    BorrowBookEdit = new QLineEdit();
    BorrowManEdit = new QLineEdit();

    QPushButton *yesbutton = new QPushButton(tr("确认"));
    QGridLayout *gridLayout = new QGridLayout();//信息填写
    QHBoxLayout *Hyes = new QHBoxLayout();//确认按钮
    QVBoxLayout *Vbox = new QVBoxLayout(); //整体

    QLabel *jie =new QLabel();
    QFont font("Microsoft YaHei",40);
    jie->setFont(font);
    jie->setText("借书");
    QHBoxLayout *jieBox =new QHBoxLayout();
    jieBox ->addStretch();
    jieBox ->addWidget(jie);
    jieBox->addStretch();


    gridLayout->setContentsMargins(50,50,50,100);
    gridLayout->setSpacing(40);
    gridLayout->addWidget(BookNo,1,1);
    gridLayout->addWidget(BorrowBookEdit,1,2);
    gridLayout->addWidget(ReaderNo,2,1);
    gridLayout->addWidget(BorrowManEdit,2,2);

    Hyes ->addStretch();
    Hyes ->addWidget(yesbutton);
    Hyes ->addStretch();

    Vbox ->addLayout(jieBox);
    Vbox ->addLayout(gridLayout);
    Vbox ->addLayout(Hyes);

    BorrowWidget ->setLayout(Vbox);

    connect(yesbutton,SIGNAL(clicked()),this,SLOT(borrowBook()));

    BorrowWidget->show();

}
void Widget::Backfuct()
{
    if(Type==0){
        QMessageBox::critical(0,QObject::tr("error"),"您目前无还书权限，请先登录！");
        return;
    }
    BackWidget = new QWidget();
    QLabel *BookNo = new QLabel(tr("书籍编号"));//书编号
    QLabel *ReaderNo = new QLabel(tr("读书证号"));//读书证编号
    BackBookEdit = new QLineEdit();//书编号输入
    BackManEdit = new QLineEdit();//读书证号输入

    QPushButton *yesbutton = new QPushButton(tr("确认"));
    QGridLayout *gridLayout = new QGridLayout();//信息填写
    QHBoxLayout *Hyes = new QHBoxLayout();//确认按钮
    QVBoxLayout *Vbox = new QVBoxLayout(); //整体

    QLabel *jie =new QLabel();
    QFont font("Microsoft YaHei",40);
    jie->setFont(font);
    jie->setText("还书");
    QHBoxLayout *huanBox =new QHBoxLayout();
    huanBox ->addStretch();
    huanBox ->addWidget(jie);
    huanBox->addStretch();


    gridLayout->setContentsMargins(50,50,50,100);
    gridLayout->setSpacing(40);
    gridLayout->addWidget(BookNo,1,1);
    gridLayout->addWidget(BackBookEdit,1,2);
    gridLayout->addWidget(ReaderNo,2,1);
    gridLayout->addWidget(BackManEdit,2,2);


    Hyes ->addStretch();
    Hyes ->addWidget(yesbutton);
    Hyes ->addStretch();

    Vbox ->addLayout(huanBox);
    Vbox ->addLayout(gridLayout);
    Vbox ->addLayout(Hyes);

    BackWidget ->setLayout(Vbox);
    connect(yesbutton,SIGNAL(clicked()),this,SLOT(backBook()));

    BackWidget->show();
}

void Widget::searchBook()
{
    //空白输入，则将整个图书库显示出来
    if(bno_e->text().isEmpty() &&
       nameLine->text().isEmpty() &&
       authorLine->text().isEmpty() &&
       !dateBox->currentText().compare("    ") &&
       !dateBox1->currentText().compare("    ") &&
       publishLine->text().isEmpty() &&
       priceLine->text().isEmpty() &&
       priceLine1->text().isEmpty() &&
       categoryLine->text().isEmpty()){
        QString sqlstr="select * from book;";
        QSqlQuery query;
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            //return;
        }

        //将上次查询的结果清空
        result.clear();
        //将新的查询结果存入容器
        while(query.next()){
            for(int i=0;i<9;i++){
                result.push_back(query.value(i).toString());
            }
        }
        if(result.length()==0){
            QMessageBox::critical(0,QObject::tr("error"),"图书库目前为空！");
            return;
        }
        //打印查询结果
        updateShowBookWindow();
        return;
    }
    //年份和价格的范围检查，应该有两个值且左小右大
    if((dateBox->currentText().compare("    ")==0&&dateBox1->currentText().compare("    ")!=0)||
       (dateBox->currentText().compare("    ")!=0&&dateBox1->currentText().compare("    ")==0)){
        QMessageBox::critical(0,QObject::tr("error"),"您输入的年份范围有误");
        return;
        if(dateBox->currentText().compare("    ")){
            int year1,year2;
            year1 = dateBox->currentText().toInt();
            year2 = dateBox1->currentText().toInt();
            if(year1>year2){
                QMessageBox::critical(0,QObject::tr("error"),"您输入的年份范围有误");
                return;
            }
        }
    }
    if((!priceLine->text().isEmpty()&&priceLine1->text().isEmpty())||
       (priceLine->text().isEmpty()&&!priceLine1->text().isEmpty())){
        QMessageBox::critical(0,QObject::tr("error"),"您输入的价格范围有误");
        return;
        if(!priceLine->text().isEmpty()){
            int price1,price2;
            price1 = dateBox->currentText().toInt();
            price2 = dateBox1->currentText().toInt();
            if(price1>price2){
                QMessageBox::critical(0,QObject::tr("error"),"您输入的价格范围有误");
                return;
            }
        }
    }

    //信息检索，sql,
    //select * from book where
    // if exsist , attrribute = LineEdit and ...
    int count=0;//目前条件数
    //QString sqlstr="select bno,name,category,author,price,stock,pub,pubyear from book where ";
    QString sqlstr="select * from book where ";
    if(!bno_e->text().isEmpty()){
        if(count>0) sqlstr=sqlstr+"and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    if(!nameLine->text().isEmpty()){
        if(count>0) sqlstr = sqlstr + " and ";
        sqlstr = sqlstr + "bno = '" + bno_e->text()+"' ";
        count++;
    }
    //结尾补; ，进行查询
    sqlstr = sqlstr + ";";
    QSqlQuery query;
    query.exec(sqlstr);
    if(!query.isActive()){
        QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
        //return;
    }

    //将上次查询的结果清空
    result.clear();
    //将新的查询结果存入容器
    while(query.next()){
        for(int i=0;i<9;i++){
            result.push_back(query.value(i).toString());
        }
    }
    if(result.length()==0){
        QMessageBox::critical(0,QObject::tr("error"),"搜索结果为空，信息可能有误！");
        return;
    }
    updateShowBookWindow();//打印查询结果
}

void Widget::searchclear()
{
    bno_e->clear();
    nameLine->clear();
    authorLine->clear();
    dateBox->setCurrentIndex(0);
    dateBox1->setCurrentIndex(0);
    publishLine->clear();
    priceLine->clear();
    priceLine1->clear();
    categoryLine->clear();
}

void Widget:: borrowBook()
{
    QSqlQuery query;
    QSqlQuery subquery;
    if(BorrowBookEdit->text().isEmpty()||BorrowManEdit->text().isEmpty()){
        QMessageBox::critical(0,QObject::tr("error"),"请将信息填写完整！");
        return;
    }
    else {
        QString sqlstr="select name from card where cno = '"+BorrowManEdit->text() +"';";
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"借书证查询为空！");
            return;
        }
        QString Cname = query.value(0).toString();

        sqlstr="select name, stock from book where bno = '"+BorrowBookEdit->text() +"';";
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"书籍查询为空！");
            return;
        }
        sqlstr="select * from borrow where bno = '"+BorrowBookEdit->text() +"' and ";
        sqlstr= sqlstr + "cno ='" + BorrowManEdit->text() +"';";
        subquery.exec(sqlstr);
        if(subquery.next()){
            QMessageBox::critical(0,QObject::tr("error"),"一个证件不能多次借阅同一本书！");
            return;
        }

        QString Bname = query.value(0).toString();
        int Bstock =query.value(1).toInt();
        if(Bstock==0){
            sqlstr ="select return_date from borrow where bno ='" + BorrowBookEdit->text() +"'";
            subquery.exec(sqlstr);
            QStringList dateList;
            while(subquery.next()){
                dateList<<subquery.value(0).toString();
            }
            int size=dateList.size();
            QDateTime dateArray[size];
            for(int i=0;i<size;i++){
                dateArray[i] = QDateTime::fromString(dateList.at(i), "yyyy-MM-dd");
            }
            int earliest=0;
            for(int i=1;i<size;i++){
                if(dateArray[earliest].daysTo(dateArray[i])<0){
                    earliest = i;
                }
            }
            QString Edate = dateArray[earliest].toString("yyyy-MM-dd");
            QString msg ="该书暂无库存，最近归还日期为 "+Edate+".";
            QMessageBox::critical(0,QObject::tr("提示"),msg);
            return ;
        }
        //以下执行borrow表的信息插入
        sqlstr = "insert into borrow value('";
        sqlstr = sqlstr + BorrowManEdit->text() +"'";
        sqlstr = sqlstr + ",'"+ Cname  +"'";
        sqlstr = sqlstr + ",'"+ BorrowBookEdit->text()  +"'";
        sqlstr = sqlstr + ",'"+ Bname  +"'";

        QDateTime time = QDateTime::currentDateTime();//获取系统现在的时间
        QString Borrowdate = time.toString("yyyy-MM-dd"); //设置显示格式
        QString Backdate=time.addDays(+30).toString("yyyy-MM-dd");//获取前一天时间
        sqlstr = sqlstr + ",'"+ Borrowdate  +"'";
        sqlstr = sqlstr + ",'"+ Backdate  +"');";
        subquery.exec(sqlstr);
        //以下执行book表的信息更新
        sqlstr="update book set stock = stock - 1 ";
        sqlstr =sqlstr + " where bno ='"+ BorrowBookEdit->text() +"';";
        subquery.exec(sqlstr);
        //以下执行card表的信息更新
        sqlstr="update card set borrowed = borrowed +1 ";
        sqlstr =sqlstr + " where cno ='"+ BorrowManEdit->text() +"';";
        subquery.exec(sqlstr);
    }
    BorrowWidget->close();
}

void Widget::backBook()
{
    QSqlQuery query;

    if(BackBookEdit->text().isEmpty()||BackManEdit->text().isEmpty()){
        QMessageBox::critical(0,QObject::tr("error"),"请将信息填写完整！");
        return;
    }
    else {
        QString sqlstr="select name from card where cno = '"+BackManEdit->text() +"';";
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"借书证查询为空！");
            return;
        }
        sqlstr="select name, stock from book where bno = '"+BackBookEdit->text() +"';";
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"书籍查询为空！");
            return;
        }
        sqlstr="select * from borrow where bno = '"+BackBookEdit->text() +"' and ";
        sqlstr= sqlstr + "cno ='" + BackManEdit->text() +"';";
        query.exec(sqlstr);
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"不存在该条借阅信息！");
            return;
        }

        //删除该借阅信息
        sqlstr = "delete from borrow where ";
        sqlstr = sqlstr + "cno = '"   + BackManEdit->text()  +"' and ";
        sqlstr =sqlstr + "bno = '"+ BackBookEdit->text() + "';";
        query.exec(sqlstr);
        //以下执行book表的信息更新
        sqlstr="update book set stock = stock + 1 ";
        sqlstr =sqlstr + " where bno ='"+ BackBookEdit->text() +"';";
        query.exec(sqlstr);
        //以下执行card表的信息更新
        sqlstr="update card set borrowed = borrowed -1 ";
        sqlstr =sqlstr + " where cno ='"+ BackManEdit->text() +"';";
        query.exec(sqlstr);
    }
    BackWidget->close();

}

void Widget::addSingleWin()
{
    if(Type==0){
        QMessageBox::critical(0,QObject::tr("error"),"您目前无导入图书权限，请先登录！");
        return;
    }
    SingleWidget = new QWidget();

    SgBnoEdit = new QLineEdit(); //必填项
    SgNameEdit = new QLineEdit();
    SgCategoryEdit = new QLineEdit();
    SgAuthorEdit = new QLineEdit();
    SgPriceEdit = new QLineEdit();
    SgStockEdit = new QLineEdit();
    SgPubEdit = new QLineEdit();
    SgPubyearEdit = new QLineEdit();

    QGridLayout *singleglay = new QGridLayout();
    QLabel *bno = new QLabel(tr("书编号"));
    QLabel *name = new QLabel(tr("书籍名称"));
    QLabel *category = new QLabel(tr("类型"));
    QLabel *author = new QLabel(tr("作者"));
    QLabel *price = new QLabel(tr("价格"));
    QLabel *stock = new QLabel(tr("存入量"));
    QLabel *pub = new QLabel(tr("出版商"));
    QLabel *pubyear = new QLabel(tr("出版年份"));

    singleglay -> setContentsMargins(50,50,50,50);
    singleglay -> addWidget(bno,1,1);
    singleglay -> addWidget(SgBnoEdit,1,2);
    singleglay -> addWidget(name,2,1);
    singleglay -> addWidget(SgNameEdit,2,2);
    singleglay -> addWidget(category,3,1);
    singleglay -> addWidget(SgCategoryEdit,3,2);
    singleglay -> addWidget(author,4,1);
    singleglay -> addWidget(SgAuthorEdit,4,2);
    singleglay -> addWidget(price,5,1);
    singleglay -> addWidget(SgPriceEdit,5,2);
    singleglay -> addWidget(pub,6,1);
    singleglay -> addWidget(SgPubEdit,6,2);
    singleglay -> addWidget(pubyear,7,1);
    singleglay -> addWidget(SgPubyearEdit,7,2);
    singleglay -> addWidget(stock,8,1);
    singleglay -> addWidget(SgStockEdit,8,2);

    QPushButton *queren = new QPushButton(tr("确认"));
    QHBoxLayout *hbox = new QHBoxLayout();
    hbox->addStretch();
    hbox->addWidget(queren);
    hbox->addStretch();

    QVBoxLayout *vbox= new QVBoxLayout();
    vbox->addLayout(singleglay);
    vbox->addLayout(hbox);

    SingleWidget ->setLayout(vbox);
    SingleWidget->show();
    connect(queren,SIGNAL(clicked()),this,SLOT(addOneBook()));
}
void Widget::addOneBook()
{
    QString Bno = SgBnoEdit->text();
    QString Name = SgNameEdit->text();
    QString Category = SgCategoryEdit->text();
    QString Author = SgAuthorEdit->text();
    QString Price = SgPriceEdit->text();
    QString Stock = SgStockEdit->text();
    QString Pub = SgPubEdit->text();
    QString Pubyear = SgPubyearEdit->text();
    QStringList value;
    QStringList attribute;
    value <<Bno<<Name<<Category<<Author<<Price<<Pub<<Pubyear<<Stock;
    attribute <<"bno"<<"name"<<"category"<<"author"<<"price"<<"pub"<<"pubyear"<<"stock"<<"total";

    QSqlQuery query;
    QSqlQuery subquery;

    if(Bno.isEmpty()){
        QMessageBox::critical(0,QObject::tr("error"),"书编号请勿为空");
        return ;
    }
    else {
        QString str = "select * from book where bno = '";
        str = str+ Bno +"'";
        query.exec(str);
        if(query.next()){
            for(int i=1;i<7;i++){
                if(value.at(i).length()!=0){
                    str = "update book set "+attribute.at(i)+"='"+value.at(i)+"'";
                    str =str + " where bno = '" + value.at(0) +"'";
                    subquery.exec(str);
                }
            }
            str = "update book set "+ attribute.at(7) + "="+ attribute.at(7) + " + "+ value.at(7) +"," ;
            str = str +  attribute.at(8) + "="+ attribute.at(8) + " + "+ value.at(7);
            str = str + " where bno = '" + value.at(0) + "'";
            subquery.exec(str);
        }
        else {
            str = "insert into book value(";
            str = str + "'"+value.at(0) + "'";//bno
            str = str + ","+"'"+ value.at(1) +"'";//name
            str = str + ","+"'"+ value.at(2) +"'";//category
            str = str + ","+"'"+ value.at(3) +"'";//author
            str = str + ","+"'"+ value.at(4) +"'";//price
            str = str + ","+"'"+ value.at(7) +"'";//stock
            str = str + ","+"'"+ value.at(5) +"'";//pub
            str = str + ","+"'"+ value.at(6) +"'";//pubyear
            str = str + ","+"'"+ value.at(7) +"'";//total
            str = str + ");";
            subquery.exec(str);
        }

    }
    SingleWidget->close();
}
void Widget::addMultiWin()
{
    if(Type==0){
        QMessageBox::critical(0,QObject::tr("error"),"您目前无导入图书权限，请先登录！");
        return;
    }
    FilePath = new QWidget();
    filepath = new QLineEdit;
    QLabel *Label = new QLabel("路径");
    QPushButton *Path= new QPushButton(tr("确认"));
    QHBoxLayout *Edit = new QHBoxLayout();
    QHBoxLayout *Butt = new QHBoxLayout();
    QVBoxLayout *All = new QVBoxLayout();
    Edit->addWidget(Label);
    Edit->addWidget(filepath);
    Butt->addStretch();
    Butt->addWidget(Path);
    Butt->addStretch();
    All ->addLayout(Edit);
    All ->addLayout(Butt);
    FilePath->setLayout(All);
    FilePath->show();
    connect(Path,SIGNAL(clicked()),this,SLOT(addMulti()));
}


void Widget::addMulti()
{
    QString getpath;
    getpath = filepath->text();
    QFile file(getpath);
    file.open(QIODevice::ReadOnly);
    QTextStream books(&file);
    QString str;
    BookMsg.clear();
    QStringList bnores;
    while((str = books.readLine()).size()!=0){
        BookMsg = str.split("/");
        sqlBookAdd(BookMsg);
        bnores.push_back(BookMsg.at(0));
    }
    str ="select * from book where bno in (";
    str =str + bnores.at(0);
    for(int i =1;i<bnores.size();i++){
        str =str +","+bnores.at(i);
    }
    str =str + ");";
    QSqlQuery tmp;
    tmp.exec(str);
    if(!tmp.isActive()){
        QMessageBox::critical(0,QObject::tr("error"),tmp.lastError().text());
        //return;
    }
    result.clear();
    while(tmp.next()){
        for(int i=0;i<9;i++){
            result.push_back(tmp.value(i).toString());
        }
    }
    if(result.length()==0){
        QMessageBox::critical(0,QObject::tr("error"),"文件信息为空或格式可能有误！");
        return;
    }
    FilePath->close();
    updateShowBookWindow();

}

void Widget::sqlBookAdd(QStringList Book)
{
    QSqlQuery query;
    QSqlQuery subquery;
    QString str= "selsct * from book where bno = '";
    QString tmp= Book.at(0);
    QStringList sqlattribute;
    sqlattribute<<"bno"<<"name"<<"category"<<"author"<<"price"<<"pub"<<"pubyear"<<"stock"<<"total";
    str = str + tmp+ "'";
    query.exec(str);
    if(query.next()){
        for(int i=1;i<7;i++){
            if(BookMsg.at(i).size()!=0){
                tmp = BookMsg.at(i);
                str = "update book set "+sqlattribute.at(i)+" = "+tmp+" where bno = "+query.value(0).toString();
                subquery.exec(str);
            }
            str ="update book set "+sqlattribute.at(7)+ "=" +sqlattribute.at(7)+"+ "+Book.at(7)+"," ;
            str = str +sqlattribute.at(8)+ "=" +sqlattribute.at(8)+"+ "+Book.at(7);
            str = str + " where bno = "+query.value(0).toString();
            subquery.exec(str);
        }
    }
    else {
        str = "insert into book value(";
        str = str + "'"+Book.at(0) + "'";//bno
        str = str + ","+"'"+ Book.at(1) +"'";//name
        str = str + ","+"'"+ Book.at(2) +"'";//category
        str = str + ","+"'"+ Book.at(3) +"'";//author
        str = str + ","+"'"+ Book.at(4) +"'";//price
        str = str + ","+"'"+ Book.at(7) +"'";//stock
        str = str + ","+"'"+ Book.at(5) +"'";//pub
        str = str + ","+"'"+ Book.at(6) +"'";//pubyear
        str = str + ","+"'"+ Book.at(7) +"'";//total
        str = str + ");";
        subquery.exec(str);
    }
}

void Widget::setWindowCardManage()
{
    window2 = new QWidget();
    listCard = new QListWidget();
    displayCard = new QGroupBox("功能面板");
    cardTable = new QTableWidget();

    cardRegister= new QPushButton("注册新用户");
    cardDelete = new QPushButton("注销用户");
    cardUpdate = new QPushButton("更新用户信息");

    QVBoxLayout *DispLayout = new QVBoxLayout();//左侧栏
    QVBoxLayout *TableLayout = new QVBoxLayout();
    QHBoxLayout *Hwindow2 = new QHBoxLayout();//整体

    cardTable ->setFixedWidth(710);
    DispLayout ->addWidget(listCard,4);
    DispLayout ->addWidget(cardRegister);
    DispLayout ->addWidget(cardUpdate);
    DispLayout ->addWidget(cardDelete);
    displayCard ->setLayout(DispLayout);

    TableLayout ->addWidget(cardTable);

    Hwindow2 ->addLayout(TableLayout);
    Hwindow2 -> addWidget(displayCard);

    UpdateCardShowTable();


    connect(cardRegister,SIGNAL(clicked()),this,SLOT(RegisterCardWin()));
    connect(cardDelete,SIGNAL(clicked()),this,SLOT(DeleteCardWin()));
    connect(cardUpdate,SIGNAL(clicked()),this,SLOT(UpdateCardWin()));

    window2 ->setLayout(Hwindow2);
}


void Widget::UpdateCardShowTable()
{
    QStringList header;
    cardTable -> clear();
    cardTable -> setRowCount(0);

    //设置表格为不可修改，单行选择
    cardTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
    cardTable->setSelectionBehavior ( QAbstractItemView::SelectRows); //设置选择行为，以行为单位
    cardTable->setSelectionMode ( QAbstractItemView::SingleSelection); //设置选择模式，选择单行

    int lie = 5;
    cardTable -> setColumnCount(lie);
    header<<"借书证号"<<"姓名"<<"院系"<<"身份"<<"借阅数量";
    cardTable ->setHorizontalHeaderLabels(header);

    for(int i=0;i<lie;i++){
        cardTable ->setColumnWidth(i,120);
    }

    QString str = "select * from card";
    QSqlQuery query;
    query.exec(str);

    result.clear();//清空结果容器

    while(query.next()){
        for(int i = 0;i<lie;i++){
            result.push_back(query.value(i).toString());
        }
    }
    int max = result.size()/lie;
    for(int i=0;i<max;i++){
        int row = cardTable->rowCount();
        cardTable->setRowCount(row+1);
        for(int j=0;j<lie;j++){
            QTableWidgetItem *item = new QTableWidgetItem(result.at(lie*i+j));
            cardTable ->setItem(i,j,item);
            cardTable ->item(i,j)->setTextAlignment(Qt::AlignCenter|Qt::AlignVCenter);
        }
    }
    result.clear();
    connect(cardTable,&QTableWidget::cellClicked,this,&Widget::showCard);
}

void Widget::showCard(int row)
{
    listCard->clear();
    listCard->addItem("借书证号："+cardTable->item(row,0)->text());
    listCard->addItem("姓名："+cardTable->item(row,1)->text());
    listCard->addItem("院系："+cardTable->item(row,2)->text());
    listCard->addItem("身份："+cardTable->item(row,3)->text());
    listCard->addItem("借阅数量："+cardTable->item(row,4)->text());
}

void Widget::RegisterCardWin()//注册借书证
{
    RgWidget = new QWidget();

    CnoEdit = new QLineEdit();
    CnameEdit = new QLineEdit();
    DeptEdit = new QLineEdit();
    PrvlgEdit = new QLineEdit();

    QLabel *CnoLabel = new QLabel("读书证号");
    QLabel *CnameLabel = new QLabel("姓名");
    QLabel *DeptLabel = new QLabel("院系");
    QLabel *PrvlgLabel = new QLabel("身份");

    QGridLayout * gridlayout= new QGridLayout;
    gridlayout ->setContentsMargins(50,50,50,100);
    gridlayout -> addWidget(CnoLabel,1,1);
    gridlayout -> addWidget(CnoEdit,1,2);
    gridlayout -> addWidget(CnameLabel,2,1);
    gridlayout -> addWidget(CnameEdit,2,2);
    gridlayout -> addWidget(DeptLabel,3,1);
    gridlayout -> addWidget(DeptEdit,3,2);
    gridlayout -> addWidget(PrvlgLabel,4,1);
    gridlayout -> addWidget(PrvlgEdit,4,2);

    QPushButton *yesButt = new QPushButton("确认");
    QHBoxLayout *Hbox = new QHBoxLayout();
    Hbox -> addStretch();
    Hbox -> addWidget(yesButt);
    Hbox -> addStretch();

    QVBoxLayout *Vbox = new QVBoxLayout();
    Vbox->addLayout(gridlayout);
    Vbox ->addLayout(Hbox);

    RgWidget ->setLayout(Vbox);

    connect(yesButt,SIGNAL(clicked()),this,SLOT(RegisterCard()));

    RgWidget->show();
}

void Widget::DeleteCardWin()//注销借书证
{
    DeWidget = new QWidget();
    CnoEdit = new QLineEdit();
    CnoEdit->setPlaceholderText("必填");

    QLabel *CnoLabel = new QLabel("读书证号");

    QGridLayout * gridlayout= new QGridLayout;
    gridlayout ->setContentsMargins(50,50,50,100);
    gridlayout -> addWidget(CnoLabel,1,1);
    gridlayout -> addWidget(CnoEdit,1,2);

    QPushButton *yesButt = new QPushButton("确认");
    QHBoxLayout *Hbox = new QHBoxLayout();
    Hbox -> addStretch();
    Hbox -> addWidget(yesButt);
    Hbox -> addStretch();

    QVBoxLayout *Vbox = new QVBoxLayout();
    Vbox->addLayout(gridlayout);
    Vbox ->addLayout(Hbox);

    DeWidget ->setLayout(Vbox);

    connect(yesButt,SIGNAL(clicked()),this,SLOT(DeleteCard()));

    DeWidget->show();

}

void Widget::UpdateCardWin()//修改借书证信息
{
    UpWidget = new QWidget();

    CnoEdit = new QLineEdit();
    CnoEdit->setPlaceholderText("必填");
    CnameEdit = new QLineEdit();
    DeptEdit = new QLineEdit();
    PrvlgEdit = new QLineEdit();

    QLabel *CnoLabel = new QLabel("读书证号");
    QLabel *CnameLabel = new QLabel("姓名");
    QLabel *DeptLabel = new QLabel("院系");
    QLabel *PrvlgLabel = new QLabel("身份");

    QGridLayout * gridlayout= new QGridLayout;
    gridlayout ->setContentsMargins(50,50,50,100);
    gridlayout -> addWidget(CnoLabel,1,1);
    gridlayout -> addWidget(CnoEdit,1,2);
    gridlayout -> addWidget(CnameLabel,2,1);
    gridlayout -> addWidget(CnameEdit,2,2);
    gridlayout -> addWidget(DeptLabel,3,1);
    gridlayout -> addWidget(DeptEdit,3,2);
    gridlayout -> addWidget(PrvlgLabel,4,1);
    gridlayout -> addWidget(PrvlgEdit,4,2);

    QPushButton *yesButt = new QPushButton("确认");
    QHBoxLayout *Hbox = new QHBoxLayout();
    Hbox -> addStretch();
    Hbox -> addWidget(yesButt);
    Hbox -> addStretch();

    QVBoxLayout *Vbox = new QVBoxLayout();
    Vbox->addLayout(gridlayout);
    Vbox ->addLayout(Hbox);

    UpWidget ->setLayout(Vbox);

    connect(yesButt,SIGNAL(clicked()),this,SLOT(UpdateCard()));

    UpWidget->show();
}

void Widget::RegisterCard()//注册借书证
{
    QSqlQuery query;
    QString str="select * from card where cno = '"+CnoEdit->text()+"'";
    query.exec(str);
    if(query.next()){
        QMessageBox::critical(0,QObject::tr("error"),"该读书证号已存在！");
        return;
    }
    str="insert into card value(";
    str = str +"'"+CnoEdit->text()+"'";
    str = str +",'"+CnameEdit->text()+"'";
    str = str +",'"+DeptEdit->text()+"'";
    str = str +",'"+PrvlgEdit->text()+"'";
    str = str +",0);";

    query.exec(str);
    if(!query.isActive()){
        QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
        return;
    }
    UpdateCardShowTable();
    RgWidget->close();
}

void Widget::DeleteCard()//注销借书证
{
    QMessageBox msgBox;
    msgBox.setText("提示");
    msgBox.setInformativeText("确认要删除该借书证吗?");
    msgBox.setStandardButtons(QMessageBox::Ok | QMessageBox::Cancel);
    msgBox.setDefaultButton(QMessageBox::Ok);
    int ret = msgBox.exec();
    if(ret == QMessageBox::Ok){
        QSqlQuery query;
        QString str="select * from card where cno = '"+CnoEdit->text()+"'";
        query.exec(str);
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"该读书证号不存在！");
            return;
        }

        str = "select * from borrow where cno = '"+ CnoEdit->text() +"'";
        query.exec(str);
        if(query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"该读书证号还有书籍未还，无法删除！");
            return;
        }

        str = "delete from card where cno = '"+CnoEdit->text()+"'";
        query.exec(str);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        UpdateCardShowTable();
        DeWidget->close();
    }
}

void Widget::UpdateCard()//修改借书证信息
{
    QStringList attribute;
    attribute <<"cno"<<"name"<<"department"<<"privilege";
    QStringList value;
    value<<CnoEdit->text()<<CnameEdit->text()<<DeptEdit->text()<<PrvlgEdit->text();

    QMessageBox msgBox;
    msgBox.setText("提示");
    msgBox.setInformativeText("确认要修改吗?");
    msgBox.setStandardButtons(QMessageBox::Ok | QMessageBox::Cancel);
    msgBox.setDefaultButton(QMessageBox::Ok);
    int ret = msgBox.exec();
    if(ret == QMessageBox::Ok){
        QSqlQuery query;
        QString str="select * from card where cno = '"+CnoEdit->text()+"'";
        query.exec(str);
        if(!query.next()){
            QMessageBox::critical(0,QObject::tr("error"),"该读书证号不存在！");
            return;
        }

        str = "update card set ";
        str = str+ attribute.at(0) + " = '"+value.at(0)+"'";
        for(int i=1;i<4;i++){
            if(value.at(i).size()!=0){
                str = str+", "+ attribute.at(i) + " = '"+value.at(i)+"'";
            }
        }
        str = str +" where cno = '"+CnoEdit->text()+"'";

        query.exec(str);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }
        UpdateCardShowTable();
        UpWidget->close();
    }
}

void Widget::setWindowInfoManager()//借阅信息界面
{
    window3 = new QWidget();
    listInfo = new QListWidget();
    ShowInfo = new QGroupBox("功能面板");
    infoTable = new QTableWidget();

    CnoInfo = new QLineEdit();
    CnoInfo->setPlaceholderText("借书证号……");
    BnoInfo = new QLineEdit();
    BnoInfo->setPlaceholderText("书籍编号……");
    QPushButton *infoSearchButt = new QPushButton("确认搜索");

    QVBoxLayout *DispLayout = new QVBoxLayout();//左侧栏
    QVBoxLayout *TableLayout = new QVBoxLayout();
    QHBoxLayout *Hwindow3 = new QHBoxLayout();//整体

    infoTable ->setFixedWidth(710);
    DispLayout ->addWidget(listInfo,4);
    DispLayout ->addWidget(CnoInfo);
    DispLayout ->addWidget(BnoInfo);
    DispLayout ->addWidget(infoSearchButt);
    ShowInfo ->setLayout(DispLayout);

    TableLayout ->addWidget(infoTable);

    Hwindow3 ->addLayout(TableLayout);
    Hwindow3 -> addWidget(ShowInfo);

    UpdateCardShowTable();

    connect(infoSearchButt,SIGNAL(clicked()),this,SLOT(infoSearch()));
    UpdateInfoShowTable();

    window3 ->setLayout(Hwindow3);

}
void Widget::infoSearch()
{
    if(CnoInfo->text().isEmpty()&&BnoInfo->text().isEmpty()){
        QString sqlstr="select * from borrow ;";
        QSqlQuery query;
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }

        //将上次查询的结果清空
        result.clear();
        //将新的查询结果存入容器
        while(query.next()){
            for(int i=0;i<6;i++){
                result.push_back(query.value(i).toString());
            }
        }
        if(result.length()==0){
            QMessageBox::critical(0,QObject::tr("error"),"目前无人借书！");
            return;
        }
        //打印查询结果
        UpdateInfoShowTable();
        return;
    }
    else {
        QString sqlstr="select * from borrow where ";
        int count=0;
        if(CnoInfo->text().size()!=0){
            sqlstr = sqlstr + "cno = '"+ CnoInfo->text() +"'";
            count++;
        }
        if(BnoInfo->text().size()!=0){
            if(count>0) sqlstr = sqlstr +" and ";
            sqlstr = sqlstr + "bno = '"+ BnoInfo->text() +"';";
        }

        QSqlQuery query;
        query.exec(sqlstr);
        if(!query.isActive()){
            QMessageBox::critical(0,QObject::tr("error"),query.lastError().text());
            return;
        }

        //将上次查询的结果清空
        result.clear();
        //将新的查询结果存入容器
        while(query.next()){
            for(int i=0;i<6;i++){
                result.push_back(query.value(i).toString());
            }
        }
        if(result.length()==0){
            QMessageBox::critical(0,QObject::tr("error"),"信息不存在！");
            return;
        }
        //打印查询结果
        UpdateInfoShowTable();
        return;
    }
}
void Widget::UpdateInfoShowTable()
{
    QStringList header;
    header<<"借书证号"<<"姓名"<<"书籍编号"<<"书籍名"<<"借书时间"<<"还书时间";
    infoTable->setRowCount(0);

    //设置表格为不可修改，单行选择
    infoTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
    infoTable->setSelectionBehavior ( QAbstractItemView::SelectRows); //设置选择行为，以行为单位
    infoTable->setSelectionMode ( QAbstractItemView::SingleSelection); //设置选择模式，选择单行

    int lie = 6;
    infoTable->setColumnCount(lie);
    infoTable->setHorizontalHeaderLabels(header);

    for(int i=0;i<lie;i++){
        infoTable->setColumnWidth(i,120);
    }

    //最大显示数
    int max=result.size()/lie;
    for(int i=0;i<max;i++){
        int row = infoTable->rowCount();
        infoTable->setRowCount(row+1);//新增一行
        //填补新一行数据
        for(int j=0;j<lie;j++){
            QTableWidgetItem *item = new QTableWidgetItem(result.at(lie*i+j));
            infoTable->setItem(i,j,item);//填补新一行数据
            infoTable->item(i,j)->setTextAlignment(Qt::AlignHCenter|Qt::AlignVCenter);
        }
    }
    connect(infoTable,&QTableWidget::cellClicked,this,&Widget::displayInfo);
}
void Widget::displayInfo(int row)
{
    listInfo->clear();
    listInfo->addItem("借书证号："+infoTable->item(row,0)->text());
    listInfo->addItem("姓名："+infoTable->item(row,1)->text());
    listInfo->addItem("书籍编号："+infoTable->item(row,2)->text());
    listInfo->addItem("书籍名："+infoTable->item(row,3)->text());
    listInfo->addItem("借书时间："+infoTable->item(row,4)->text());
    listInfo->addItem("还书时间："+infoTable->item(row,5)->text());
}

