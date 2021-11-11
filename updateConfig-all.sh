#!/bin/bash
curl -k -X POST https://gateway:8081/actuator/refresh & \
curl -X POST http://bitcoindAdapter1:8081/actuator/refresh & \
#curl -X POST http://bitcoindAdapter2:8081/actuator/refresh & \
curl -X POST http://txMemPool1:8081/actuator/refresh & \
#curl -X POST http://txMemPool2:8081/actuator/refresh & \
#curl -X POST http://txMemPool3:8081/actuator/refresh & \
#curl -X POST http://mempoolRecorder:8081/actuator/refresh
