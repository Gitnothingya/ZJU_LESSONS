#include "./view/mainwindow.h"
#include "./app/app.h"
#include <QApplication>
#include <QDir>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    TetrApp app;
    app.Init(w);
    return a.exec();
}
