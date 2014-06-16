#!/bin/bash
export QTDIR=/home/rock/
export QT_PLUGIN_PATH=$QTDIR/plugins
export LD_LIBRARY_PATH=$QTDIR/lib
export QT_QWS_FONTDIR=$QTDIR/lib/fonts

cd src/3rdparty/webkit/WebCore/
make -j4
cd -

export QTDIR=/home/rock/qt-everywhere-opensource-src-4.7.2
export QT_PLUGIN_PATH=$QTDIR/plugins
export LD_LIBRARY_PATH=$QTDIR/lib
export QT_QWS_FONTDIR=$QTDIR/lib/fonts
./demos/browser/browser $@ &
