#include "Integer.h"

Integer::init(int i)
{
  this->i = i;
}

Integer* Integer::bigger(Integer* r)
{
  if ( r->i > i )
    return r;
  else
    return this;
}
