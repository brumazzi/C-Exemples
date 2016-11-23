/****************************************************************************
** Meta object code from reading C++ file 'LsWin.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "LsWin.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'LsWin.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_LSWIN[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
       7,    6,    6,    6, 0x0a,
      18,    6,    6,    6, 0x0a,
      27,    6,    6,    6, 0x0a,
      35,    6,    6,    6, 0x0a,
      41,    6,    6,    6, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_LSWIN[] = {
    "LSWIN\0\0allegroF()\0gladeF()\0glutF()\0"
    "qtF()\0syncF()\0"
};

void LSWIN::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        LSWIN *_t = static_cast<LSWIN *>(_o);
        switch (_id) {
        case 0: _t->allegroF(); break;
        case 1: _t->gladeF(); break;
        case 2: _t->glutF(); break;
        case 3: _t->qtF(); break;
        case 4: _t->syncF(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData LSWIN::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject LSWIN::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_LSWIN,
      qt_meta_data_LSWIN, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &LSWIN::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *LSWIN::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *LSWIN::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_LSWIN))
        return static_cast<void*>(const_cast< LSWIN*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int LSWIN::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
