#!/bin/sh

echo "We count to ten!"

(( i = 1 ))
while (( i <= 10 )) ; do
    echo $i
    (( i++ ))
done
