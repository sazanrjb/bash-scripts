#!/bin/bash

awk -f printAscii.awk /dev/null | pr -t -c4
