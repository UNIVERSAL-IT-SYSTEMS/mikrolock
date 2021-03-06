#-------------------------------------------------
#
# Project created by QtCreator 2015-04-13T21:32:49
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = mikrolock-gui
TEMPLATE = app

SOURCES += main.cpp mlockmainwindow.cpp \
    showmanualdialog.cpp

HEADERS  += mlockmainwindow.h \
    showmanualdialog.h

FORMS    += mlockmainwindow.ui \
    showmanualdialog.ui

RESOURCES += mlock-gui.qrc

INCLUDEPATH += ../../../libs
INCLUDEPATH += . ../../..

QMAKE_CXXFLAGS += -std=c++11

TRANSLATIONS = mikrolock_de_DE.ts

linux {
    LIBS += -L../../.. -lmikrolock -lsodium
}

win32  {

        QT += winextras
        # *64* bit config
        INCLUDEPATH+=D:\Devel\qt-everywhere-opensource-src-5.7.0\qtwinextras\include\QtWinExtras

        DEFINES += WIN32

        INCLUDEPATH+=D:\Devel\cpp\libsodium-win64\include

        LIBS += -LD:\Devel\cpp\mlock-code\src -lmikrolock
        LIBS += -LD:\Devel\cpp\libsodium-win64\lib -lsodium

        DESTDIR = ..\\..\\..\\..
        RC_FILE = icon.rc

        QMAKE_POST_LINK = $$quote(D:\Devel\upx391w\upx.exe --best D:\Devel\cpp\mlock-code\mikrolock-gui.exe)
}
