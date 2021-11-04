docker-compose \
-f zookeeper.yml \
-f serviceDiscoveryServer.yml \
-f kafka1.yml \
-f adminServer.yml \
-f configurationServer.yml \
-f zuul-gateway.yml \
-f bitcoindAdapter1.yml \
-f bitcoindAdapter2.yml \
-f txMempool1.yml \
-f txMempool2.yml \
-f txMempool3-OtherDB.yml \
-f recorder1.yml \
-f recorder2.yml \
-f mongo1TxMempool.yml \
-f mongo2TxMempool.yml \
-f mongo1Recorder.yml \
-f mongo2Recorder.yml \
down
