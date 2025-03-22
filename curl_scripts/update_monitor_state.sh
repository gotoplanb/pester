#!/bin/bash

# Check if BASE_URL is set
if [ -z "${BASE_URL}" ]; then
    echo "Error: BASE_URL environment variable is not set"
    exit 1
fi

response=$(curl -s -w "%{http_code}" -X 'POST' \
  "${BASE_URL}/api/v1/monitor/1/state/" \
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