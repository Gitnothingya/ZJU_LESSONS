#ifndef VIEWMODEL_H
#define VIEWMODEL_H

#include "../common/blockpool.h"
#include "commands.h"
#include "../model/model.h"

class ViewModel
{
public:
    ViewModel();
    void set_model(const std::shared_ptr<DataModel>& model);
    DataModel& get_model() ;

    //向view层传递命令指针
    inline std::shared_ptr<CommandBase> get_start_command() { return std::static_pointer_cast<CommandBase>(m_cmd_start); }
    inline std::shared_ptr<CommandBase> get_left_command() { return std::static_pointer_cast<CommandBase>(m_cmd_left); }
    inline std::shared_ptr<CommandBase> get_down_command() { return std::static_pointer_cast<CommandBase>(m_cmd_down); }
    inline std::shared_ptr<CommandBase> get_right_command() { return std::static_pointer_cast<CommandBase>(m_cmd_right); }
    inline std::shared_ptr<CommandBase> get_rotate_command() { return std::static_pointer_cast<CommandBase>(m_cmd_rotate); }
    inline std::shared_ptr<CommandBase> get_counterrotate_command() { return std::static_pointer_cast<CommandBase>(m_cmd_counterrotate); }
    inline std::shared_ptr<CommandBase> get_harddrop_command() { return std::static_pointer_cast<CommandBase>(m_cmd_harddrop); }
    inline std::shared_ptr<CommandBase> get_hold_command() { return std::static_pointer_cast<CommandBase>(m_cmd_hold); }
    inline std::shared_ptr<CommandBase> get_pause_command() { return std::static_pointer_cast<CommandBase>(m_cmd_pause); }
    inline std::shared_ptr<CommandBase> get_setting_command() { return std::static_pointer_cast<CommandBase>(m_cmd_setting); }


    //向view层传递数据
    inline int* get_pool() { return m_Model->get_pool(); }
    inline int* get_shadow() { return m_Model->get_shadow(); }
    inline int* get_hold() {return m_Model->get_hold(); }
    inline std::queue<int*>* get_next() { return m_Model->get_next();}

    inline int* get_linenum(){ return m_Model->get_linenum(); }
    inline int* get_score(){ return m_Model->get_score(); }

    void set_end_notice(const std::shared_ptr<NotificationBase> n);

    //command类中执行
    inline bool start(){ return m_Model->start_game();}
    inline bool left(){ return m_Model->left(); }
    inline bool down(){ return m_Model->down(); }
    inline bool right(){ return m_Model->right();}
    inline bool rotate(){ return m_Model->rotate();}
    inline bool counterrotate(){ return m_Model->counterrotate();}
    inline bool harddrop(){ return m_Model->harddrop();}
    inline bool hold(){ return m_Model->hold();}
    inline bool pause(){ return m_Model->pause();}
    inline bool setting(){ return m_Model->setting();}

private:
    std::shared_ptr<DataModel> m_Model;    

    std::shared_ptr<GameStartCommand> m_cmd_start;
    std::shared_ptr<LeftBlockCommand> m_cmd_left;
    std::shared_ptr<DownBlockCommand> m_cmd_down;
    std::shared_ptr<RightBlockCommand> m_cmd_right;
    std::shared_ptr<RotateBlockCommand> m_cmd_rotate;
    std::shared_ptr<CounterRotateBlockCommand> m_cmd_counterrotate;
    std::shared_ptr<HarddropBlockCommand> m_cmd_harddrop;
    std::shared_ptr<HoldBlockCommand> m_cmd_hold;
    std::shared_ptr<PauseBlockCommand> m_cmd_pause;
    std::shared_ptr<SettingBlockCommand> m_cmd_setting;

};

#endif // VIEWMODEL_H
