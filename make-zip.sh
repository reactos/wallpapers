#!/usr/bin/env bash
# Create a zip file from wallpapers

if ! command -v zip &> /dev/null
then
    echo "make-zip.sh: No zip program found."
    exit 1
fi

WORK_DIR=$(dirname "$0")
OUTPUT_DIR=$WORK_DIR
ZIP_FILE=$OUTPUT_DIR/wallpapers.zip
MAX_KB=650

echo "make-zip.sh: WORK_DIR=$WORK_DIR"
echo "make-zip.sh: OUTPUT_DIR=$OUTPUT_DIR"
echo "make-zip.sh: ZIP_FILE=$ZIP_FILE"
echo "make-zip.sh: MAX_KB=$MAX_KB"

if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
fi

if [ -f "$ZIP_FILE" ]; then
    rm "$ZIP_FILE"
fi

# Find wallpapers and store them in an array
# NOTE: We use Bash array to handle filenames with spaces correctly.
mapfile -t WALLPAPERS_LIST < <(find "$WORK_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.tif" -o -iname "*.gif" -o -iname "*.bmp" \) -print)

# File size check
for file in "${WALLPAPERS_LIST[@]}"; do
    file_size=$(wc -c < "$file")
    KB=$((file_size / 1024))
    MB=$((KB / 1024))
    if [ $KB -gt $MAX_KB ]; then
        if [ $MB -gt 1 ]; then
            echo "make-zip.sh: WARNING: $file : $MB MB > $MAX_KB KB"
        else
            echo "make-zip.sh: WARNING: $file : $KB KB > $MAX_KB KB"
        fi
    fi
done

cp -f "$WORK_DIR/README.md" /tmp/README.txt

zip -j -q "$ZIP_FILE" "${WALLPAPERS_LIST[@]}" /tmp/README.txt "$WORK_DIR/LICENSE.txt"

if [ "$?" -eq "0" ] && [ -f "$ZIP_FILE" ]; then
    file_size=$(wc -c < "$ZIP_FILE")
    KB=$((file_size / 1024))
    MB=$((KB / 1024))
    if [ $MB -gt 1 ]; then
        echo "make-zip.sh: Generated $ZIP_FILE ($MB MB)"
    else
        echo "make-zip.sh: Generated $ZIP_FILE ($KB KB)"
    fi
fi

rm /tmp/README.txt
