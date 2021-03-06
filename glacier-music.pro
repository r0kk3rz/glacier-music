TEMPLATE = app
TARGET = glacier-music

QT += qml quick sql multimedia

LIBS += -ltag -lglacierapp

SOURCES += main.cpp \
    src/collection.cpp \
    src/dbadapter.cpp \
    src/rescancollection.cpp \
    src/audiofile.cpp \
    src/artist.cpp \
    src/track.cpp \
    src/models/artistsqlmodel.cpp \
    src/models/tracksqlmodel.cpp \
    src/models/playlistmodel.cpp \
    src/musicbrainzconnect.cpp \
    src/cover.cpp \
    src/downloader.cpp

target.path = /usr/bin

qml.files = qml/*
qml.path = /usr/share/glacier-music/qml

images.files = images/*
images.path = /usr/share/glacier-music/images/

desktop.files = glacier-music.desktop
desktop.path = /usr/share/applications

INSTALLS += target desktop qml images

DISTFILES += \
    rpm/glacier-music.spec \
    glacier-music.desktop \
    qml/glacier-music.qml \
    qml/pages/PlayerPage.qml \
    qml/pages/SettingsPage.qml \
    qml/components/CoverArea.qml \
    qml/components/PlaylistItem.qml \
    qml/pages/LibraryPage.qml \
    qml/pages/ArtistsPage.qml \
    qml/pages/TracksPage.qml \
    qml/components/ControlsArea.qml \
    images/cover.png

HEADERS += \
    src/collection.h \
    src/dbadapter.h \
    src/rescancollection.h \
    src/audiofile.h \
    src/item.h \
    src/artist.h \
    src/track.h \
    src/models/artistsqlmodel.h \
    src/models/tracksqlmodel.h \
    src/models/playlistmodel.h \
    src/musicbrainzconnect.h \
    src/cover.h \
    src/downloader.h

CONFIG += link_pkgconfig
PKGCONFIG += taglib glacierapp
