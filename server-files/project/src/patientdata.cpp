#include "patientdata.h"

using namespace Cutelyst;

PatientData::PatientData(QObject *parent) : Controller(parent)
{
}

PatientData::~PatientData()
{
}

void PatientData::index(Context *c)
{
    c->response()->body() = "Matched Controller::PatientData in PatientData.";
}

void PatientData::patients(Context *c)
{
//    c->stash({
//                {"username", "Bret"},
//                {"template", "PatientData/patients.html"}
//             });
    c->response()->body() = "test";
}
