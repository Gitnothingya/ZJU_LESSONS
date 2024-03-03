#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "../common/parameter.h"

#include <random>

EndNotification::EndNotification(MainWindow* w)
{
    window = w;
}
void EndNotification::notice()
{
    if(para == 0){

        window->set_clock_stop();
        QMessageBox::critical(NULL, "OVER", "游戏结束",
                              QMessageBox::Yes);
    }
    else {
    }
}
void EndNotification::setParameter(int give)
{
    para = give;
}
void MainWindow::set_clock_stop()
{
    is_run = 0;
    down_tick->stop();
    time_count->stop();
}




MainWindow::MainWindow(QWidget* parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , notice_end(std::make_shared<EndNotification>(this))
{
   ui->setupUi(this);
    this->setFixedSize(660,720);
    set_label();
    ui->menubar->setStyleSheet("background-color:grey");
    ui->startButton->setStyleSheet("QPushButton{background-color:white;}\
                                    QPushButton:hover{background-color:yellow;}");
    connect(ui->actionmodel_1, SIGNAL(triggered(bool)), this, SLOT(set_model_1));
    connect(ui->actionmodel_2, SIGNAL(triggered(bool)), this, SLOT(set_model_2));
    connect(ui->actionranking, SIGNAL(triggered(bool)), this, SLOT(show_ranking));

    down_tick = new QTimer(this);
    runtime = new QTimer(this);
    time_count = new QTimer(this);
    connect(time_count,SIGNAL(timeout()),this,SLOT(updateTimeLabel()));
    connect(down_tick, SIGNAL(timeout()), this, SLOT(auto_down()));

    runtime->start(10);
    connect(runtime, SIGNAL(timeout()), this, SLOT(on_secondadd()));

    setFocusPolicy(Qt::StrongFocus);//获取焦点，方向键和空格可用

    show_time = new QLabel(this);
    show_time->setFont(QFont("Microsoft YaHei",25,1,0));
    show_time->move(530,590);

    show_score = new QLabel(this);
    show_score->setFont(QFont("Microsoft YaHei",25,1,0));
    show_score->move(530,440);

    setWindowTitle("俄罗斯方块");
}


void MainWindow::set_label()
{
    QLabel *next=new QLabel("NEXT",this);
    QLabel *score=new QLabel("SCORE",this);
    QLabel *time=new QLabel("TIME",this);
    QLabel *hold=new QLabel("HOLD",this);
    QFont font("Microsoft YaHei",25,1,0);
    next->setFont(font);
    next->move(20,40);
    score->setFont(font);
    score->move(528,400);
    time->setFont(font);
    time->move(530,550);
    hold->setFont(font);
    hold->move(530,40);
}

void MainWindow::paintEvent(QPaintEvent* e)
{
    QPainter painter(this);
    QPixmap pix_t("://images/T.png");
    QPixmap pix_s("://images/S.png");
    QPixmap pix_z("://images/Z.png");
    QPixmap pix_l("://images/L.png");
    QPixmap pix_j("://images/J.png");
    QPixmap pix_i("://images/I.png");
    QPixmap pix_o("://images/O.png");
    QPixmap pix_wall("://images/wall.png");
    QPixmap pix_shadow("://images/shadow.png");
    int h = this->height();
    for (int i = 1; i < 22; i++)
    {
        painter.drawPixmap(150, h - 30 * i, 30, 30, pix_wall);
        painter.drawPixmap(480, h - 30 * i, 30, 30, pix_wall);
    }
    for (int i = 1; i < 11; i++)
    {
        painter.drawPixmap(150+30 * i, h - 30, 30, 30, pix_wall);
    }
    for (int x = 0; x < 10; x++)
    {
        for (int y = 0; y < 22; y++)
        {
            switch(shadow(x,y))
            {
                case T_MINO:
                case S_MINO:
                case Z_MINO:
                case L_MINO:
                case J_MINO:
                case I_MINO:
                case O_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_shadow); break;
            }
        }
    }
    for (int x = 0; x < 10; x++)
    {
        for (int y = 0; y < 22; y++)
        {
            switch (pool(x,y))
            {
                case T_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_t); break;
                case S_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_s); break;
                case Z_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_z); break;
                case L_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_l); break;
                case J_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_j); break;
                case I_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_i); break;
                case O_MINO:painter.drawPixmap(180 + 30 * x, h - 30 * (y+2), 30, 30, pix_o); break;
            }
        }
    }
    for(int x=0;x<4;x++){
        for(int y=0;y<4;y++){
            switch(hold[4*y+x]){
            case T_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_t); break;
            case S_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_s); break;
            case Z_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_z); break;
            case L_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_l); break;
            case J_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_j); break;
            case I_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_i); break;
            case O_MINO:painter.drawPixmap(520+30*x, 30 * (-y+5), 30, 30, pix_o); break;
            }
        }
    }
    for(unsigned int iter_i=0; iter_i<next->size(); iter_i++){
        int *mat = next->front();
        next->pop();
        next->push(mat);

        for(int x=0;x<4;x++){
            for(int y=0;y<4;y++){
                switch(mat[4*y+x]){
                case T_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_t); break;
                case S_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_s); break;
                case Z_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_z); break;
                case L_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_l); break;
                case J_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_j); break;
                case I_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_i); break;
                case O_MINO:painter.drawPixmap(30+30*x, 30 * (-y+5) + 4 * 30 * iter_i, 30, 30, pix_o); break;
                }
            }
        }
    }
}

void MainWindow::keyPressEvent(QKeyEvent* event)
{
    if(is_run){
        switch (event->key())
        {
        case Qt::Key_Left:
        case Qt::Key_A://锟斤拷锟斤拷锟狡讹拷
        {
            cmd_left->Exec();
            break;
        }

        case Qt::Key_Z://锟斤拷转锟斤拷锟芥）
        {
            cmd_rotate->Exec();
            break;
        }
        case Qt::Key_X://逆旋转
        {
            cmd_counterrotate->Exec();
            break;
        }

        case Qt::Key_Right:
        case Qt::Key_D://锟斤拷锟斤拷锟狡讹拷
        {
            cmd_right->Exec();
            break;
        }

        case Qt::Key_Down:
        case Qt::Key_S://锟斤拷锟斤拷
        {
            cmd_down->Exec();
            break;
        }

        case Qt::Key_Space://硬锟斤拷
        case Qt::Key_W:
        {
            cmd_harddrop->Exec();
            break;
        }

        case Qt::Key_P://锟斤拷停
        {

            cmd_pause->Exec();
            break;
        }

        case Qt::Key_C://锟捷达拷
        {
            cmd_hold->Exec();
            break;
        }
        case Qt::Key_R:
        {
            on_startButton_clicked();
        }
        default: break;
        }
    }
}

void MainWindow::set_gamestart_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_start = cmd;
}

void MainWindow::set_left_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_left = cmd;
}

void MainWindow::set_right_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_right = cmd;
}

void MainWindow::set_down_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_down = cmd;
}

void MainWindow::set_rotate_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_rotate = cmd;
}

void MainWindow::set_counterrotate_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_counterrotate = cmd;
}

void MainWindow::set_harddrop_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_harddrop = cmd;
}

void MainWindow::set_pause_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_pause = cmd;
}

void MainWindow::set_hold_command(const std::shared_ptr<CommandBase>& cmd)
{
    cmd_hold = cmd;
}


void MainWindow::set_pool_data( int* data)
{
    pool = data;
}

void MainWindow::set_shadow_data( int* data)
{
    shadow = data;
}

void MainWindow::set_hold_data(int* data)
{
    hold = data;
}
void MainWindow::set_next_data(std::queue<int*>* data)
{
    next = data;
}
void MainWindow::set_score_data(int* data)
{
    score = data;
}

void MainWindow::on_secondadd()
{
    repaint();

    show_score->setText(QString::number(*score));

    QString str = QString::number(time);
    str += "S";
    show_time->setText(str);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_startButton_clicked()
{
    cmd_start->Exec();
    if(time_count->isActive()){
        time =0;
        is_run = 1;
    }
    else {
        time =0;
        is_run = 1;
        time_count->start(100);
    }
    if(down_tick->isActive()){
        is_run = 1;
    }
    else {
        down_tick->start(BASE_TICK);
        is_run = 1;
    }

}
void MainWindow::updateTimeLabel()
{
    time+=0.1;
}
