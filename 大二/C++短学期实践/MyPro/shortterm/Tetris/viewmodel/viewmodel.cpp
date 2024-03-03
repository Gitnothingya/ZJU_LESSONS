#include "viewmodel.h"

ViewModel::ViewModel() :
                                m_cmd_start(std::make_shared<GameStartCommand>(this)),
                                m_cmd_left(std::make_shared<LeftBlockCommand>(this)),
                                m_cmd_down(std::make_shared<DownBlockCommand>(this)),
                                m_cmd_right(std::make_shared<RightBlockCommand>(this)),
                                m_cmd_rotate(std::make_shared<RotateBlockCommand>(this)),
                                m_cmd_counterrotate(std::make_shared<CounterRotateBlockCommand>(this)),
                                m_cmd_harddrop(std::make_shared<HarddropBlockCommand>(this)),
                                m_cmd_hold(std::make_shared<HoldBlockCommand>(this)),
                                m_cmd_pause(std::make_shared<PauseBlockCommand>(this)),
                                m_cmd_setting(std::make_shared<SettingBlockCommand>(this))
{}

void ViewModel::set_model(const std::shared_ptr<DataModel>& model)
{
    m_Model = model;
}

void ViewModel::set_end_notice(const std::shared_ptr<NotificationBase> n)
{
    m_Model->set_end_notification(n);
}
