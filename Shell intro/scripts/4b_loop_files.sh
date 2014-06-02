#!/bin/sh

FILES=`ls -1`

for f in $FILES; do
    echo $f "is a file"
done

