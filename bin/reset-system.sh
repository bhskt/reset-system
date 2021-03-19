#!/bin/bash

while getopts m flag; do
  case "${flag}" in
  m) MAX=1 ;;
  esac
done

if [[ "$MAX" == 1 ]]; then
  brightness 1
  osascript -e "set Volume 10"
else
  brightness 0.5
  osascript -e "set Volume 4"
fi
