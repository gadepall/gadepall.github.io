#!/bin/bash

# Check if the base filename and n are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 base_filename n"
  exit 1
fi

base_filename="$1"
n="$2"

# Loop from 0 to n
for i in $(seq 0 $n)
do
  mv "${base_filename}.$i" "${base_filename%.html}${i}0.html"
done

