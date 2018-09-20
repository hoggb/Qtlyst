/****************************************************************************
** Meta object code from reading C++ file 'monitor.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/monitor.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'monitor.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Monitor_t {
    QByteArrayData data[11];
    char stringdata0[93];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Monitor_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Monitor_t qt_meta_stringdata_Monitor = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Monitor"
QT_MOC_LITERAL(1, 8, 5), // "index"
QT_MOC_LITERAL(2, 14, 14), // ":Path:AutoArgs"
QT_MOC_LITERAL(3, 29, 8), // "patients"
QT_MOC_LITERAL(4, 38, 6), // ":Local"
QT_MOC_LITERAL(5, 45, 3), // "End"
QT_MOC_LITERAL(6, 49, 28), // ":ActionClass(\"RenderView\")"
QT_MOC_LITERAL(7, 76, 0), // ""
QT_MOC_LITERAL(8, 77, 8), // "Context*"
QT_MOC_LITERAL(9, 86, 1), // "c"
QT_MOC_LITERAL(10, 88, 2) // "id"

    },
    "Monitor\0index\0:Path:AutoArgs\0patients\0"
    ":Local\0End\0:ActionClass(\"RenderView\")\0"
    "\0Context*\0c\0id"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Monitor[] = {

 // content:
       7,       // revision
       0,       // classname
       3,   14, // classinfo
       3,   20, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // classinfo: key, value
       1,    2,
       3,    4,
       5,    6,

 // methods: name, argc, parameters, tag, flags
       1,    1,   35,    7, 0x02 /* Public */,
       3,    2,   38,    7, 0x02 /* Public */,
       5,    1,   43,    7, 0x00 /* Private */,

 // methods: parameters
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8, QMetaType::QString,    9,   10,
    QMetaType::Void, 0x80000000 | 8,    9,

       0        // eod
};

void Monitor::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Monitor *_t = static_cast<Monitor *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->index((*reinterpret_cast< Context*(*)>(_a[1]))); break;
        case 1: _t->patients((*reinterpret_cast< Context*(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 2: _t->End((*reinterpret_cast< Context*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Context* >(); break;
            }
            break;
        case 1:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Context* >(); break;
            }
            break;
        case 2:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Context* >(); break;
            }
            break;
        }
    }
}

const QMetaObject Monitor::staticMetaObject = {
    { &Controller::staticMetaObject, qt_meta_stringdata_Monitor.data,
      qt_meta_data_Monitor,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *Monitor::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Monitor::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Monitor.stringdata0))
        return static_cast<void*>(this);
    return Controller::qt_metacast(_clname);
}

int Monitor::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Controller::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
