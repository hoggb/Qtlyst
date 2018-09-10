#include "monitor.h"

using namespace Cutelyst;

Monitor::Monitor(QObject *parent) : Controller(parent)
{
}

Monitor::~Monitor()
{
}

void Monitor::index(Context *c)
{
    c->response()->body() = "Matched Controller::Monitor in Monitor.";
}


void Monitor::patients(Context *c)
{

    c->stash({
                 {"username", "Bret"},
                 {"template", "monitor/patients.html"}
             });
}
