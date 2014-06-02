#!/bin/bash

FILE="3a_complex_conditionals"

if [ -f $FILE ]; then
    echo "FILE:" $FILE "exists!"
else
    echo "FILE:" $FILE "does not exists!"
fi

