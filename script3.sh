#!/bin/bash

set -e

ping -c 1 google.com | awk -F'=' '/time=/ {print $2}'
