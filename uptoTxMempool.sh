#!/bin/bash
./upInfrastructure.sh

docker-compose -f bitcoindAdapter1.yml -f mongo1TxMempool.yml -f txMempool1.yml up -d