#!/bin/bash
./upInfrastructure.sh

docker-compose \
-f mongo1TxMempool.yml \
-f bitcoindAdapter1.yml \
-f bitcoindAdapter2.yml \
-f txMempool1.yml \
-f txMempool2.yml \
up -d
