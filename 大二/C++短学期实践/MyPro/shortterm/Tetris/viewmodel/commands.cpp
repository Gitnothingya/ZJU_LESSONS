#include "commands.h"
#include "viewmodel.h"

GameStartCommand::GameStartCommand(ViewModel* p) : m_pVM(p)
{}

void GameStartCommand:: Exec()
{
    m_pVM->start();
}

LeftBlockCommand::LeftBlockCommand(ViewModel* p) : m_pVM(p)
{}

void LeftBlockCommand::Exec()
{
    m_pVM->left();
}

DownBlockCommand::DownBlockCommand(ViewModel* p) : m_pVM(p)
{}

void DownBlockCommand::Exec()
{
    m_pVM->down();
}

RightBlockCommand::RightBlockCommand(ViewModel* p) : m_pVM(p)
{}

void RightBlockCommand::Exec()
{
    m_pVM->right();
}


RotateBlockCommand::RotateBlockCommand(ViewModel* p) : m_pVM(p)
{}

void RotateBlockCommand::Exec()
{
    m_pVM->rotate();
}


CounterRotateBlockCommand::CounterRotateBlockCommand(ViewModel* p) : m_pVM(p)
{}

void CounterRotateBlockCommand::Exec()
{
    m_pVM->counterrotate();
}


HarddropBlockCommand::HarddropBlockCommand(ViewModel* p) : m_pVM(p)
{}

void HarddropBlockCommand::Exec()
{
    m_pVM->harddrop();
}


HoldBlockCommand::HoldBlockCommand(ViewModel* p) : m_pVM(p)
{}

void HoldBlockCommand::Exec()
{
    m_pVM->hold();
}


PauseBlockCommand::PauseBlockCommand(ViewModel* p) : m_pVM(p)
{}

void PauseBlockCommand::Exec()
{
    m_pVM->pause();
}


SettingBlockCommand::SettingBlockCommand(ViewModel* p) : m_pVM(p)
{}

void SettingBlockCommand::Exec()
{
    m_pVM->setting();
}
