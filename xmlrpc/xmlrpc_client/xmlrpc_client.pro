#-------------------------------------------------
#
# Project created by QtCreator 2017-02-23T19:53:43
#
#-------------------------------------------------

QT       += core gui xml network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xmlrpc_client
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        mainwindow.cpp \
    adduserdialog.cpp \
    updateuserdialog.cpp \
    addappointmentdialog.cpp \
    updateappointmentdialog.cpp \
    xmlrpcclass.cpp

HEADERS  += mainwindow.h \
    adduserdialog.h \
    updateuserdialog.h \
    addappointmentdialog.h \
    updateappointmentdialog.h \
    xmlrpcclass.h

FORMS    += mainwindow.ui \
    adduserdialog.ui \
    updateuserdialog.ui \
    addappointmentdialog.ui \
    updateappointmentdialog.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/release/ -lmaia
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/debug/ -lmaia

INCLUDEPATH += $$PWD/libmaia-master
DEPENDPATH += $$PWD/libmaia-master

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/release/libmaia.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/debug/libmaia.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/release/maia.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../BUILDS/build-maia-Desktop_Qt_5_8_0_MinGW_32bit-Debug/debug/maia.lib
