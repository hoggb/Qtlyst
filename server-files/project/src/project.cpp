#include "project.h"
#include <Cutelyst/Plugins/StaticSimple/staticsimple.h>
#include <Cutelyst/Plugins/View/Grantlee/grantleeview.h>

#include "root.h"

using namespace Cutelyst;

project::project(QObject *parent) : Application(parent)
{
}

project::~project()
{
}

bool project::init()
{
    new Root(this);
    new StaticSimple(this);
    new GrantleeView(this);
    return true;
}

