#!/bin/bash

cd "$(dirname "$0")"
cd ../txMemPool
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

