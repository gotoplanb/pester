#!/bin/bash

response=$(curl -s -w "%{http_code}" -X 'POST' \
  'http://localhost:8000/api/v1/monitors/1/state/' \
  -H 'Content-Type: application/json' \
  -d '{
  "state": "Normal"
}')

http_code=${response: -3}
body=${response:0:${#response}-3}

if [ "$http_code" -eq 200 ]; then
    echo "Success! Response: $body"
else
    echo "Error! Status code: $http_code"
    echo "Response: $body"
    exit 1
fi 