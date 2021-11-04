echo
echo "mempoolServer Build and Deploy"
echo "------------------------------"
echo
cd "$(dirname "$0")"
cd ../mempoolServer
echo "Creating project image" $(pwd) "....."
./gradlew bootJar
echo "Scopying jar to pi4..."
scp ./build/libs/mempoolServer-0.0.1-SNAPSHOT.jar ubuntu@192.168.14.2:~/programs/mempoolServer/
echo "Done!"
