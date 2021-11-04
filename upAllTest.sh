#!/bin/bash
./upInfrastructure.sh

docker-compose \
-f mongo1TxMempool.yml \
-f mongo2TxMempool.yml \
-f mongo1Recorder.yml \
-f mongo2Recorder.yml \
-f bitcoindAdapter1.yml \
-f bitcoindAdapter2.yml \
-f txMempool1.yml \
-f txMempool2.yml \
-f txMempool3-OtherDB.yml \
-f recorder1.yml \
-f recorder2.yml \
up -d
