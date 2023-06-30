#!/bin/sh
echo "::debug ::Running entrypoint.sh"
echo "Hello $1"
time=$(date)
echo $INPUT_WHO-TO-GREET
echo ${INPUT_WHO-TO-GREET}
echo $HELLO
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV