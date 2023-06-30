#!/bin/sh
echo "::debug ::Running entrypoint.sh"
echo "Hello $1"
time=$(date)
echo "INPUT_WHO_TO_GREET: $INPUT_WHO_TO_GREET"
echo "HELLO: $HELLO"
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV

# if <condition> ; then
#   exit 1
# fi