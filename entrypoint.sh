#!/bin/sh -lx

echo "Hello $1"
echo "Sosamba"

time=$(date)
echo "::set-output name=time::$time"

if [ "$1" = "World" ]; then
  echo 'wrong'
  exit 1
fi