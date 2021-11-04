#!/bin/bash

cd "$(dirname "$0")"
cd ../mempoolRecorder
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon