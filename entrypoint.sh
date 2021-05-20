#!/bin/sh -l

req="curl -s -o /dev/null -w '%{http_code}' -X POST $3 --data \"\$1\" $2"
code=$(eval "$req")
echo "::set-output name=code::$code"

status_code=$(curl --write-out %{http_code} -X POST $3 --data \"$1\" --silent --output /dev/null $2)
echo "::set-output name=status_code::$status_code"

#if [ $(curl -s -o /dev/null -w "%{http_code}" -X POST $3 --data \"\$1\" $2) -ne 200 ]; then
#  echo "%{http_code}"
#  exit 1;
#fi
