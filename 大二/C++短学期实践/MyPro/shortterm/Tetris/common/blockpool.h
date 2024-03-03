#ifndef BLOCKPOOL_H
#define BLOCKPOOL_H

#include <queue>
#include "parameter.h"

class CommandBase
{
public:
    virtual void Exec() = 0;
};

class NotificationBase{
public:
    virtual void notice() = 0;
    virtual void setParameter(int give) = 0;
protected:
    int para;
};

#endif // BLOCKPOOL_H
