/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.2.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionranking;
    QAction *actionmodel_1;
    QAction *actionmodel_2;
    QWidget *centralwidget;
    QLabel *show_time;
    QLabel *show_score;
    QPushButton *startButton;
    QMenuBar *menubar;
    QMenu *menumenu;
    QMenu *menumodel;
    QMenu *menuabout;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(660, 660);
        QFont font;
        font.setPointSize(25);
        font.setBold(true);
        MainWindow->setFont(font);
        actionranking = new QAction(MainWindow);
        actionranking->setObjectName(QString::fromUtf8("actionranking"));
        QFont font1;
        font1.setPointSize(12);
        actionranking->setFont(font1);
        actionmodel_1 = new QAction(MainWindow);
        actionmodel_1->setObjectName(QString::fromUtf8("actionmodel_1"));
        actionmodel_1->setFont(font1);
        actionmodel_2 = new QAction(MainWindow);
        actionmodel_2->setObjectName(QString::fromUtf8("actionmodel_2"));
        actionmodel_2->setFont(font1);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        startButton = new QPushButton(centralwidget);
        startButton->setObjectName(QString::fromUtf8("startButton"));
        startButton->setGeometry(QRect(0, 640, 150, 50));
        show_time = new QLabel(centralwidget);
        show_score = new QLabel(centralwidget);
        QFont font2;
        font2.setFamilies({QString::fromUtf8("Microsoft YaHei")});
        font2.setPointSize(20);
        font2.setBold(false);
        startButton->setFont(font2);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 660, 31));
        QFont font3;
        font3.setPointSize(14);
        font3.setBold(false);
        menubar->setFont(font3);
        menumenu = new QMenu(menubar);
        menumenu->setObjectName(QString::fromUtf8("menumenu"));
        menumodel = new QMenu(menubar);
        menumodel->setObjectName(QString::fromUtf8("menumodel"));
        menuabout = new QMenu(menubar);
        menuabout->setObjectName(QString::fromUtf8("menuabout"));
        MainWindow->setMenuBar(menubar);

        menubar->addAction(menumenu->menuAction());
        menubar->addAction(menumodel->menuAction());
        menubar->addAction(menuabout->menuAction());
        menumenu->addAction(actionranking);
        menumodel->addAction(actionmodel_1);
        menumodel->addAction(actionmodel_2);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        actionranking->setText(QCoreApplication::translate("MainWindow", "ranking", nullptr));
        actionmodel_1->setText(QCoreApplication::translate("MainWindow", "model_1", nullptr));
        actionmodel_2->setText(QCoreApplication::translate("MainWindow", "model_2", nullptr));
        startButton->setText(QCoreApplication::translate("MainWindow", "START", nullptr));
        menumenu->setTitle(QCoreApplication::translate("MainWindow", "menu", nullptr));
        menumodel->setTitle(QCoreApplication::translate("MainWindow", "model", nullptr));
        menuabout->setTitle(QCoreApplication::translate("MainWindow", "about", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
