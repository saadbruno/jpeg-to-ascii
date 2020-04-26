#! /bin/bash
#Usage ./j2asc infile.jpg outfile.jpg

mkdir ./output

FILES=./render/*
for f in $FILES
do
    NAME=$(basename $f)
    jp2a --width=250 -i  "$f" | convert -page 2100x1500 -font Inconsolata-Regular -pointsize 16 text:$1 ./output/$NAME
done