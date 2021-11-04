#!/bin/bash
./upInfrastructure-prod.sh

docker-compose -f bitcoindAdapter1.yml -f mongo1Recorder.yml -f recorder1.yml up -d
