TARGET = systemd-journal-daemon
target.path = /usr/bin

QT += dbus
CONFIG += link_pkgconfig
PKGCONFIG += libsystemd-journal


SOURCES += src/daemon.cpp \
    src/adaptor.cpp \
    src/journal.cpp

dbus.files = dbus/ru.omprussia.systemd.journal.service
dbus.path = /usr/share/dbus-1/services

systemd.files = systemd/systemd-journal-daemon.service
systemd.path = /usr/lib/systemd/user

INSTALLS += target dbus systemd

HEADERS += \
    src/adaptor.h \
    src/journal.h
