#-------------------------------------------------
#
# Project created by QtCreator 2018-09-06T15:52:41
#
#-------------------------------------------------

QT       += network

QT       -= gui

TARGET = server-files
TEMPLATE = lib

DEFINES += SERVERFILES_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        serverfiles.cpp \
        project/src/project.cpp \
        project/src/root.cpp \
        project/src/monitor.cpp



HEADERS += \
        serverfiles.h \
        server-files_global.h \
        project/src/project.h \
        project/src/root.h \
        project/src/monitor.h



unix {
    target.path = /usr/lib
    INSTALLS += target
}

#So QtCreator doesn't complain about not finding dependencies
INCLUDEPATH += /home/hoggb/cutelyst \
               #/usr/bin/x86_64-linux-gnu


LIBS += -Lhome/hoggb/cutelyst/build/Cutelyst -lCutelyst2Qt5 \
        #-L/home/hoggb/cutelyst/build/grantlee/5.1 -lgrantlee_cutelyst \
        -Lhome/hoggb/cutelyst/build/EventLoopEPoll -lCutelyst2Qt5EventLoopEpoll \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/View/Grantlee -lCutelyst2Qt5ViewGrantlee \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/View/JSON -lCutelyst2Qt5ViewJson \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/View/ClearSilver -lCutelyst2Qt5ViewClearSilver \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Authentication -lCutelyst2Qt5Authentication \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/StatusMessage -lCutelyst2Qt5StatusMessage \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Utils/Validator -lCutelyst2Qt5UtilsValidator \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Utils/Sql -lCutelyst2Qt5UtilsSql \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Utils/Pagination -lCutelyst2Qt5UtilsPagination \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Utils/LangSelect -lCutelyst2Qt5UtilsLangSelect \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/Session -lCutelyst2Qt5Session \
        -Lhome/hoggb/cutelyst/build/Cutelyst/Plugins/StaticSimple -lCutelyst2Qt5StaticSimple \
        -Lhome/hoggb/cutelyst/build/Cutelyst -lCutelyst2Qt5 \
        #-Lhome/hoggb/cutelyst/build/Cutelyst/Actions/RenderView -lActionRenderView \
        #-Lhome/hoggb/cutelyst/build/Cutelyst/Actions/REST -lActionREST \
        #-Lhome/hoggb/cutelyst/build/Cutelyst/Actions/RoleACL -lActionRoleACL \
        -Lhome/hoggb/cutelyst/build/wsgi -lCutelyst2Qt5Wsgi \

DISTFILES += \
    project/root/embed.html \
    project/root/monitor/patients.html \
    project/root/monitor/patient.html \
    project/root/qml/main.qml \
    project/root/static/js/qmlweb.es2015.js \
    project/root/static/js/qmlweb.js \
    project/root/static/js/qmlweb.min.js \
    project/root/static/js/qmlweb.parser.js \
    project/root/static/js/qmlweb.parser.min.js \
    project/root/static/js/qt.js \
    project/root/static/js/qt.min.js \
    project/root/static/js/LICENSE \
    project/root/static/js/qmlweb.es2015.js.map \
    project/root/static/js/qmlweb.js.map \
    project/root/static/js/qmlweb.min.js.map \
    project/root/static/js/qmlweb.parser.js.map \
    project/root/static/js/qmlweb.parser.min.js.map \
    project/root/static/js/qt.js.map \
    project/root/static/js/qt.min.js.map \
    project/root/qml/PatientsView.qml \
    project/root/static/images/Arbitrary_Waveform_1.jpg \
    project/root/qml/dummydata.js \
    project/root/qml/PatientView.qml
