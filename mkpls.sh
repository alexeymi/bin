#!/bin/bash

# script is intended to create m3u files for flac and mp3 in current working directory

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

#echo "current directory: $BASENAME"

LOWERNAME=${BASENAME,,}

find . -name "*.mp3" -o -name '*.flac' > 00-$LOWERNAME.m3u
echo "created playlist with name '00-$LOWERNAME.m3u'"
exit;
