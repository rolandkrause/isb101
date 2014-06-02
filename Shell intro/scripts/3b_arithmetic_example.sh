#!/bin/bash

FOUR=2+2

echo "Is two plus to really four?"
if [[ $((FOUR)) == 4 ]] ; then
    echo "Yes!"
else
    echo "No!"
fi

