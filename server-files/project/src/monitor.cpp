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

void Monitor::trends(Context *c)
{
    c->stash({
        {"template", "monitor/trends.html"}
    });
}


void Monitor::patients(Context *c, const QString &id)
{

    if(id != ""){
        QSqlQuery query = CPreparedSqlQueryThreadForDB("SELECT * FROM patient WHERE id = :patientid;", "MyDB");
        query.bindValue(":patientid", id);

        if (query.exec()) {
            c->setStash("patients", Sql::queryToHashList(query));
        }

        c->stash({
            {"template", "monitor/patient.html"}
        });
    }

    if(id == ""){
        QSqlQuery query = CPreparedSqlQueryThreadForDB("SELECT * FROM patient;", "MyDB");
        if (query.exec()) {
            c->setStash("patients", Sql::queryToHashList(query));
        }

        c->stash({
            {"template", "monitor/patients.html"}
        });
    }
}


