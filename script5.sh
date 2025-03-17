#!/bin/bash
set -e

if ! command -v dig &> /dev/null; then
  echo "Error: dig is not installed." >&2
  exit 1
fi

echo "--------------------"
for domen in "$@"; do  
  res=$(dig "$domen" | awk '/Query time/ {print $4 " " $5}')
  echo "$domen - $res"
done
echo "--------------------"

