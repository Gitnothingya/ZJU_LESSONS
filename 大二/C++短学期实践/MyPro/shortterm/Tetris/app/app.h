#ifndef APP_H
#define APP_H
#include "../view/mainwindow.h"
#include "../viewmodel/viewmodel.h"
class TetrApp
{
public:
    TetrApp();
    ~TetrApp() throw();
    bool Init(MainWindow& w);
private:
    std::shared_ptr<ViewModel> m_spViewModel;
};

#endif // APP_H
