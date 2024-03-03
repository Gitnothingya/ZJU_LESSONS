#ifndef COMMANDS_H
#define COMMANDS_H

#include "../common/blockpool.h"
//#include "viewmodel.h"
#include "../model/model.h"

class ViewModel;

class GameStartCommand : public CommandBase
{
public:
    GameStartCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class LeftBlockCommand : public CommandBase
{
public:
    LeftBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class DownBlockCommand : public CommandBase
{
public:
    DownBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class RightBlockCommand : public CommandBase
{
public:
    RightBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class RotateBlockCommand : public CommandBase
{
public:
    RotateBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class CounterRotateBlockCommand : public CommandBase
{
public:
    CounterRotateBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class HarddropBlockCommand : public CommandBase
{
public:
    HarddropBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class HoldBlockCommand : public CommandBase
{
public:
    HoldBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class PauseBlockCommand : public CommandBase
{
public:
    PauseBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

class SettingBlockCommand : public CommandBase
{
public:
    SettingBlockCommand(ViewModel* p);
    virtual void Exec();
private:
    ViewModel* m_pVM;
};

#endif // COMMANDS_H
