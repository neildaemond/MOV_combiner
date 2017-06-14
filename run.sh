#!/bin/bash

i=0
for f in `ls ./combine_queue/* | sort -g `; do 
    filename=$(basename "$f")
    filename="${filename%.*}"
    ffmpeg -i $f -qscale:v 1 ./combined/int_$filename.mpg
    if (( $i == 0 )); then
        concatstring="./combined/int_$filename.mpg"
    else
        concatstring="$concatstring|./combined/int_$filename.mpg"
    fi
    ((i++))
done;

ffmpeg -i concat:"$concatstring" -c copy ./combined/combined_$1.mpg
ffmpeg -i ./combined/combined_$1.mpg -qscale:v 2 ./combined/combined_$1.avi

rm -rf ./combined/int_*.mpg
