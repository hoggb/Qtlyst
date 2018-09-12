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


void Monitor::patients(Context *c, const QString &id)
{

    if(id != ""){
        c->stash({
                     {"ID", id},
                     {"template", "monitor/patient.html"}
                 });
    }

    if(id == ""){
        c->stash({
                         {"template", "monitor/patients.html"}
        });
    }

}


