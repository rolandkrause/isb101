#!/bin/bash

while read -r line; do
    ((histogram[${#line}]++))
done 

echo "Length Occurrence"
for length in "${!histogram[@]}"; do
    printf "%-6s %s\n" "${length}" "${histogram[$length]}"
done
