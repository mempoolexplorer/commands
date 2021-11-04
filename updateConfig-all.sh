#!/bin/bash
curl -X POST http://gateway:8080/actuator/refresh & \
curl -X POST http://bitcoindAdapter1:8080/actuator/refresh & \
curl -X POST http://bitcoindAdapter2:8080/actuator/refresh & \
curl -X POST http://txMemPool1:8080/actuator/refresh & \
curl -X POST http://txMemPool2:8080/actuator/refresh & \
curl -X POST http://txMemPool3:8080/actuator/refresh & \
curl -X POST http://mempoolRecorder:8080/actuator/refresh
