#include "monitor.h"
#include <QtSql>
#include <Cutelyst/Plugins/Utils/Sql/sql.h>

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
//        QSqlQuery query = CPreparedSqlQueryThreadForDB("SELECT * FROM book", "MyDB");
//        if (query.exec()) {
//            c->setStash("books", Sql::queryToHashList(query));
//        }
        c->stash({
                         {"template", "monitor/patients.html"}
        });
    }

}


