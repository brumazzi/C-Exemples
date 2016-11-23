/****************************************************************************
** Meta object code from reading C++ file 'tw.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "tw.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tw.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TW[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      10,    4,    3,    3, 0x0a,
      24,    3,    3,    3, 0x0a,
      38,    3,    3,    3, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_TW[] = {
    "TW\0\0index\0closeTab(int)\0resize_comp()\0"
    "sourceIndex()\0"
};

void TW::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TW *_t = static_cast<TW *>(_o);
        switch (_id) {
        case 0: _t->closeTab((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->resize_comp(); break;
        case 2: _t->sourceIndex(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TW::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TW::staticMetaObject = {
    { &QTabWidget::staticMetaObject, qt_meta_stringdata_TW,
      qt_meta_data_TW, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TW::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TW::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TW::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TW))
        return static_cast<void*>(const_cast< TW*>(this));
    return QTabWidget::qt_metacast(_clname);
}

int TW::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QTabWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
