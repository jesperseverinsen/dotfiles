#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && realpath )"
DES=~/.config/fastfetch

ln -sf $DIR $DES
