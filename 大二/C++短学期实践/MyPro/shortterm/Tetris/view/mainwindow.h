#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QPaintEvent>
#include <QPixmap>
#include <QPainter>
#include <QKeyEvent>
#include <QPushButton>
#include <QLayout>
#include <QLabel>
#include <QMessageBox>
#include <vector>

#include "../common/blockpool.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE
class MainWindow;


class EndNotification: public NotificationBase
{
public:
    EndNotification(MainWindow* w);
    virtual void notice();
    virtual void setParameter(int give);
private:
    MainWindow* window;
};


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget* parent = nullptr);
    
    void set_gamestart_command(const std::shared_ptr<CommandBase>& cmd);
    void set_gamemode_command(const std::shared_ptr<CommandBase>& cmd);
    void set_restart_command(const std::shared_ptr<CommandBase>& cmd);
    void set_pause_command(const std::shared_ptr<CommandBase>& cmd);
    void set_left_command(const std::shared_ptr<CommandBase>& cmd);
    void set_right_command(const std::shared_ptr<CommandBase>& cmd);
    void set_rotate_command(const std::shared_ptr<CommandBase>& cmd);
    void set_counterrotate_command(const std::shared_ptr<CommandBase>& cmd);
    void set_hold_command(const std::shared_ptr<CommandBase>& cmd);
    void set_harddrop_command(const std::shared_ptr<CommandBase>& cmd);
    void set_down_command(const std::shared_ptr<CommandBase>& cmd);


    inline std::shared_ptr<NotificationBase> get_end_notification(){ return notice_end; };
    void set_clock_stop();//设置两个时钟停止

    //data point
    void set_pool_data(int* data);
    void set_shadow_data(int* data);
    void set_hold_data(int* data);
    void set_next_data(std::queue<int*>* data);
    void set_score_data(int* data);

    ~MainWindow();
    void time_init();

protected:
    virtual void paintEvent(QPaintEvent* e);
    virtual void keyPressEvent(QKeyEvent* e);
private:
    Ui::MainWindow* ui;
    QTimer* runtime;
    QTimer* down_tick;
    QTimer* time_count;
    int* pool;
    int* shadow;
    int* hold;
    int* score;
    std::queue<int*>* next;
    double time=0;
    bool is_run=0;

    QLabel* show_time;
    QLabel* show_score;


    std::shared_ptr<CommandBase> cmd_left;
    std::shared_ptr<CommandBase> cmd_down;
    std::shared_ptr<CommandBase> cmd_right;
    std::shared_ptr<CommandBase> cmd_rotate;
    std::shared_ptr<CommandBase> cmd_counterrotate;
    std::shared_ptr<CommandBase> cmd_harddrop;
    std::shared_ptr<CommandBase> cmd_hold;
    std::shared_ptr<CommandBase> cmd_pause;
    std::shared_ptr<CommandBase> cmd_start;
    std::shared_ptr<CommandBase> cmd_setting;

    std::shared_ptr<EndNotification> notice_end;

private slots:
    void on_secondadd();
    void set_label();
    void on_startButton_clicked();
    void updateTimeLabel();
    inline void auto_down(){ cmd_down->Exec(); }
};

#endif // MAINWINDOW_H
