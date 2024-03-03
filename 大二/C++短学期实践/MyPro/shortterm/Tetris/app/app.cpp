#include "app.h"

TetrApp::TetrApp()
{}

TetrApp::~TetrApp() throw()
{}

bool TetrApp::Init(MainWindow& w)
{
    //objects
    std::shared_ptr<DataModel> spModel(std::make_shared<DataModel>());
    m_spViewModel = std::make_shared<ViewModel>();
    //binding
    m_spViewModel->set_model(spModel);

    // data
    w.set_pool_data(m_spViewModel->get_pool());
    w.set_shadow_data(m_spViewModel->get_shadow());
    w.set_hold_data(m_spViewModel->get_hold());
    w.set_next_data(m_spViewModel->get_next());
    w.set_score_data(m_spViewModel->get_score());

    // commands
    w.set_left_command(m_spViewModel->get_left_command());
    w.set_down_command(m_spViewModel->get_down_command());
    w.set_right_command(m_spViewModel->get_right_command());
    w.set_rotate_command(m_spViewModel->get_rotate_command());
    w.set_counterrotate_command(m_spViewModel->get_counterrotate_command());
    w.set_harddrop_command(m_spViewModel->get_harddrop_command());
    w.set_hold_command(m_spViewModel->get_hold_command());

    w.set_gamestart_command(m_spViewModel->get_start_command());

    //Notification
    m_spViewModel->set_end_notice(w.get_end_notification());
    w.show();
    return true;
}

