#!/bin/bash
# This script compiles and execute docker task via gradle for all services.
# Also, at the end, delete docker intermediate images (dangling images)

# Change directory
cd "$(dirname "$0")"
cd ../configurationServer
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../adminServer
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../serviceDiscovery
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../gatewayService
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../txMemPool
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../bitcoindAdapter
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../mempoolRecorder
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
cd ../mempoolServer
echo 
echo "Creating project image" $(pwd) "....."
./gradlew bootJar docker --no-daemon

cd "$(dirname "$0")"
echo 
echo "Deleting intermediate images ....."
docker rmi $(docker image ls -f "dangling=true" -q) || echo "There is no intermediate images to delete."

