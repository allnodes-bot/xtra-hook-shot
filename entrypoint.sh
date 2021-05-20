#!/bin/sh -l

echo "::echo::on"

#req="curl -s -o /dev/null -w '%{http_code}\n' -X POST $3 --data \"$1\" $2"

req="curl --write-out '%{http_code}\n' --silent --output /dev/null -X POST $3 --data \"$1\" $2"

echo $req

eval $req

echo "::set-output name=req::$req"

status_code=$(curl --write-out '%{http_code}\n' --silent --output /dev/null -X POST $3 --data \"$1\" $2)
echo "::set-output name=status_code::$status_code"

#if [ $(curl -s -o /dev/null -w "%{http_code}" -X POST $3 --data \"\$1\" $2) -ne 200 ]; then
#  echo "%{http_code}"
#  exit 1;
#fi
