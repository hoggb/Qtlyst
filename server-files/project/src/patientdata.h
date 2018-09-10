#ifndef PATIENTDATA_H
#define PATIENTDATA_H

#include <Cutelyst/Controller>

using namespace Cutelyst;

class PatientData : public Controller
{
    Q_OBJECT
public:
    explicit PatientData(QObject *parent = 0);
    ~PatientData();

    C_ATTR(index, :Path :AutoArgs)
    void index(Context *c);

    C_ATTR(patients, :Local)
    void patients(Context *c);
};

#endif //PATIENTDATA_H

