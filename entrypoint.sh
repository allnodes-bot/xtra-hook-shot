#!/bin/sh -l

req="curl --write-out '%{http_code}\n' --silent --output /dev/null -X POST $3 --data \"$1\" $2"
response_code=$(eval $req)

echo "::set-output name=response_code::$response_code"

if [ $response_code -ne 200 ]; then
  echo "ERROR [$response_code]"
  exit 1;
fi
