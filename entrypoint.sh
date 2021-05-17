#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

if $1 == 'World'; then
  echo 'wrong'
  exit 1
fi
