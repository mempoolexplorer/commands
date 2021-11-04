#!/bin/bash

echo "bitcoind:" && \
~/programas/bitcoin-0.21.0/bin/bitcoin-cli --rpcconnect=pc getmempoolinfo && \
echo "" && echo "bitcoindAdapter1:" && curl http://bitcoindadapter1:8080/memPool/size && \
#echo "" && echo "bitcoindAdapter2:" && curl http://bitcoindadapter2:8080/memPool/size && \
echo "" && echo "txmempool1:" && curl http://txmempool1:8080/memPool/size && \
#echo "" && echo "txMempool2:" && curl http://txmempool2:8080/memPool/size && \
#echo "" && echo "txMempool3:" && curl http://txmempool3:8080/memPool/size && \
#echo "" && echo "mempoolRecorder1:" && curl http://mempoolRecorder1:8080/mempool/size && \
#echo "" && echo "mempoolRecorder2:" && curl http://mempoolRecorder2:8080/mempool/size && \
echo "" && echo "gateway:" && curl -k https://gateway:8443/txmempool/memPool/size && \
echo ""

