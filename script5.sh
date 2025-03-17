#!/bin/bash
set -e

if ! command -v dig &> /dev/null; then
  echo "Error: dig is not installed." >&2
  exit 1
fi

dig www.atlantbh.com | awk '/Query time/ {print $4 " " $5}'
