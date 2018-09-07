#ifndef PROJECT_H
#define PROJECT_H

#include <Cutelyst/Application>

using namespace Cutelyst;

class project : public Application
{
    Q_OBJECT
    CUTELYST_APPLICATION(IID "project")
public:
    Q_INVOKABLE explicit project(QObject *parent = 0);
    ~project();

    bool init();
};

#endif //PROJECT_H

