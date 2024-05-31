#!/usr/bin/env bash

OLD_DIR=`pwd`
NOW_DIR=$(dirname "$0")

echo NOW_DIR=$NOW_DIR
cd $NOW_DIR
pwd

OUTPUT_DIR=`pwd`/output
ZIP_FILE=$OUTPUT_DIR/wallpapers.zip

echo OUTPUT_DIR=$OUTPUT_DIR
echo ZIP_FILE=$ZIP_FILE

if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir "$OUTPUT_DIR"
fi

if [ -f "$ZIP_FILE" ]; then
    rm "$ZIP_FILE"
fi

WALLPAPERS_LIST=`ls **{,/**}/*.{jpg,png}` README.txt LICENSE.txt

zip -j "$ZIP_FILE" $WALLPAPERS_LIST

cd $OLD_DIR
