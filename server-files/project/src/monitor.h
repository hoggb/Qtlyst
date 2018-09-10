#ifndef MONITOR_H
#define MONITOR_H

#include <Cutelyst/Controller>

using namespace Cutelyst;

class Monitor : public Controller
{
    Q_OBJECT
public:
    explicit Monitor(QObject *parent = 0);
    ~Monitor();

    C_ATTR(index, :Path :AutoArgs)
    void index(Context *c);

    C_ATTR(patients, :Local)
    void patients(Context *c);
};

#endif //MONITOR_H

