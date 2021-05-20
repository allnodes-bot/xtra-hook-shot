#!/bin/sh -l

code=$(curl -s -o /dev/null -w "%{http_code}" -X POST $3 --data \"\$1\" $2)
echo "::set-output name=code::$code"



#if [ $(curl -s -o /dev/null -w "%{http_code}" -X POST $3 --data \"\$1\" $2) -ne 200 ]; then
#  echo "%{http_code}"
#  exit 1;
#fi
