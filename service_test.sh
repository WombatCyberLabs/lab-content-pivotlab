#!/bin/sh
status=$(curl "http://localhost:8080/testResults?update=true")

if [ "$(echo $status | jq 'map(select(.success != true)) | length == 0')" != "true" ]; then
    echo "$status" | jq 'map(select(.success != true))'
    exit 1
else
    echo "Everything seems up!"
fi