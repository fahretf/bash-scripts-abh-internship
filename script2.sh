#!/bin/bash
set -e

sites=("google.com" "atlantbh.com")

for site in "${sites[@]}"; do
  echo "Pinging $site..."
  if ! ping -c 3 "$site"; then
    echo "Ping to $site failed!" >&2
  fi
done

