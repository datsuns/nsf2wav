#!/usr/bin/env bash

GME_VER=0.5.2
DESTDIR=gem

URL="http://blargg.parodius.com/libs/Game_Music_Emu-$GME_VER.zip"
DEST=./$DESTDIR/gem.zip

rm -fr $DESTDIR
mkdir -p $DESTDIR
cd $DESTDIR

wget $URL
