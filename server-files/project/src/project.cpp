#include "project.h"
#include <Cutelyst/Plugins/StaticSimple/staticsimple.h>
#include <Cutelyst/Plugins/View/Grantlee/grantleeview.h>
#include <QtSql>
#include <Cutelyst/Plugins/Utils/Sql/Sql>
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

bool project::postFork()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE", Sql::databaseNameThread("MyDB"));
    db.setDatabaseName("patientdata.db");
    db.setConnectOptions("foreign_keys = ON");
    if (!db.open()) {
        qCritical() << "Failed to open database:" << db.lastError().text();
        return false;
    }
    return true;
}

