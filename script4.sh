#!/bin/bash
set -e

if ! command -v traceroute &> /dev/null; then
  echo "Installing traceroute!"
  sudo apt install -y traceroute
fi

sudo traceroute -I www.atlantbh.com
