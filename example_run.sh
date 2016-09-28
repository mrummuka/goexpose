#!/bin/bash

./goexpose -config example/bash_tasks_config.json &
GOEXPOSE_PID="$!"

sleep 2

curl -i -X POST \
-H "Content-Type: application/json" \
-d '{"abc":4}' \
"http://localhost:9900/body/bla?aaa=4"

# curl "http://localhost:9900/"

kill "$GOEXPOSE_PID"


