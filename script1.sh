#!/bin/bash

top -bn1 | awk '/Cpu/ {print $2 + $4}'
top -bn1 | awk '/Mem/ {print $8}'



