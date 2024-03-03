#ifndef WIDGET_H
#define WIDGET_H
#include <QApplication>
#include <QLocale>
#include <QTranslator>
#include <QWidget>
#include <QObject>
#include <QPushButton>
#include <QSqlDatabase>
#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QTabWidget>
#include <QLineEdit>
#include <QGroupBox>
#include <QTableWidget>
#include <QListWidget>
#include <QComboBox>
#include <QFileDialog>
#include <QStringList>
#include <QString>
#include <QTextStream>
#include <QFile>
#include <QMessageBox>
#include <QSqlQuery>
#include <QSqlError>
#include <QPalette>
#include <QDir>
#include <QGridLayout>
#include <QSlider>
#include <QSpinBox>
#include <QSqlError>
#include <QDebug>
#include <QByteArray>
#include <QFileDialog>
#include <QDateTime>
class Widget : public QWidget
{
    Q_OBJECT
public:
    QSqlDatabase db;

    int Type;//操作权限 0-游客  1-管理员

    QWidget *mainWindow;
    QWidget *titleImage;
    QPushButton *loginbutton,*registerbutton;//登录，注册按钮
    QLabel *userTypeLabel,*newlineLabel;//显示用户，排版
    QPushButton *quitloginbutton;

    QTabWidget *mainTabWidget;
    //QTabWidget *loginTabWidget;
    QWidget *user_loginWidget;
    QWidget *manager_loginWidget;
    QWidget *window1;//搜索界面
    QWidget *window2;//用户管理，借书证管理
    QWidget *window3;//借阅信息管理

    QVBoxLayout *vboxLayout0;//整个窗口顶部排布
    QVBoxLayout *vboxLayout1;//搜索与清除按钮垂直排布
    QVBoxLayout *vboxLayout ;//搜索与图书显示垂直排布
    QVBoxLayout *vboxLayout3;//空两行，按钮排布
    QVBoxLayout *vboxLayout2;//单册图书侧边展示
    QHBoxLayout *hboxLayout1;//搜索选项与按钮水平排布
    QHBoxLayout *hboxLayout ;//整个图书信息管理界面水平，左搜索，右显示。
    QHBoxLayout *hboxLayout2;//加弹簧的按钮排布
    QHBoxLayout *hboxLayout3;//按钮行排布

    QGroupBox   *searchinfo;
    QGroupBox   *searchbutt;

    QLineEdit *username;//用户名
    QLineEdit *password;//用户密码
    QString current_user;

    //搜索栏的信息便于执行函数
    QLineEdit *bno_e ;
    QLineEdit *nameLine ;
    QLineEdit *publishLine ;
    QLineEdit *authorLine;
    QComboBox *dateBox ;
    QComboBox *dateBox1 ;
    QLineEdit *priceLine ;
    QLineEdit *priceLine1 ;
    QLineEdit *categoryLine;

    //图书管理界面排版
    QGridLayout *searchLayout;
    QTableWidget *booktable;//搜索结果显示表

    QGroupBox *displayBox;
    QListWidget *listBook;//显示选中的图书信息
    QPushButton *borrowButt;//借书按钮
    QPushButton *backButt;//还书按钮
    QPushButton *addSingleButt;
    QPushButton *addMultiButt;

    QWidget *BorrowWidget;//借书窗口
    QLineEdit *BorrowBookEdit;
    QLineEdit *BorrowManEdit;
    QLineEdit *BDateEdit;

    QWidget *BackWidget;//还书窗口
    QLineEdit *BackBookEdit;
    QLineEdit *BackManEdit;

    QWidget *SingleWidget;//单本入库窗口
    QLineEdit *SgBnoEdit;
    QLineEdit *SgNameEdit;
    QLineEdit *SgCategoryEdit;
    QLineEdit *SgAuthorEdit;
    QLineEdit *SgPriceEdit;
    QLineEdit *SgStockEdit;
    QLineEdit *SgPubEdit;
    QLineEdit *SgPubyearEdit;

    QWidget *FilePath;//多册导入文件路径输入窗口
    QLineEdit *filepath;

    //借书证界面
    QTableWidget *cardTable;
    QListWidget *listCard;//显示选中的借阅证信息
    QGroupBox   *displayCard;
    QPushButton *cardRegister;
    QPushButton *cardDelete;
    QPushButton *cardUpdate;

    QWidget *RgWidget;//注册界面
    QLineEdit *CnoEdit;
    QLineEdit *CnameEdit;
    QLineEdit *DeptEdit;
    QLineEdit *PrvlgEdit;

    QWidget *DeWidget;//删除界面
    //直接用注册的编辑行

    QWidget *UpWidget;//更新界面
    //同直接使用注册编辑行

    //借阅信息管理界面
    QListWidget * listInfo;
    QGroupBox *ShowInfo;
    QTableWidget *infoTable;

    QLineEdit *CnoInfo;
    QLineEdit *BnoInfo;


    //数据操作，信息处理
    QVector <QString> result;//查询结果
    QStringList BookMsg;//书的入库信息


    //函数
    void setMainLayout();//应用初始化，即执行顶部设置、图书搜索界面建立、数据库连接函数
    bool Dataconnect();//连接数据库
    void setTopTitle();//设置顶部图像
    void setFuncWindow();//图书管理界面初始化
    void updateShowBookWindow();//更新图书显示界面
    void sqlBookAdd(QStringList Book);
    void setWindowCardManage();//建立借阅证管理窗口
    void UpdateCardShowTable();//借阅证显示表更新
    void setWindowInfoManager();//借阅信息界面
    void UpdateInfoShowTable();//更新借阅信息显示表

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

private slots:
    void setWindowLogin();//登录界面
    void setWindowRegister();//
    void managerLogin();//登录确认
    void deleteLogin();//关闭登录界面
    void Borrowfuct();//借书窗口
    void Backfuct();//还书窗口
    void borrowBook();//借书
    void backBook();//还书
    void updateTitle();//更新顶部信息，身份及对应按钮
    void quitLogin();//退出登录
    void searchBook();//图书搜索
    void searchclear();//搜索框清空
    void displayBook(int row);
    void addSingleWin();//单册添加窗口
    void addMultiWin();//多册添加路径窗口
    void addMulti();//多册添加执行
    void addOneBook();//单册书添加执行
    void showCard(int row);//借阅证信息侧边栏显示
    void RegisterCardWin();//注册借书证窗口
    void DeleteCardWin();//注销借书证窗口
    void UpdateCardWin();//修改借书证信息窗口
    void RegisterCard();//注册借书证
    void DeleteCard();//注销借书证
    void UpdateCard();//修改借书证信息
    void infoSearch();//借阅信息修改
    void displayInfo(int row);//借阅信息侧边栏显示
};


#endif // WIDGET_H
