#include "project.h"
#include <Cutelyst/Plugins/StaticSimple/staticsimple.h>
#include <Cutelyst/Plugins/View/Grantlee/grantleeview.h>
#include "monitor.h"

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
    //CONTROLLERS
    new Root(this);
    new Monitor(this);

    //PLUGINS
    new StaticSimple(this);
    new GrantleeView(this);

    return true;
}

