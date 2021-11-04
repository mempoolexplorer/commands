#!/bin/bash

cd "$(dirname "$0")"
cd ../bitcoindAdapter
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon
