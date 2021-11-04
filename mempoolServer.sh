#!/bin/bash
# Change directory

cd "$(dirname "$0")"
cd ../mempoolServer

if [[ $# -ne 2 ]]; 
then 
	echo "usage:"
	echo "$0 localBitcoindHost remoteBitcoindHost:port" 
	echo "example:"
	echo "$0 192.168.1.38 213.37.193.111:23456"
	exit 2
fi

STR1="-Dspring.application.json="
STR2="{\"bitcoind.host\":\"$1\",\"raw-tx-source.url\":\"http://$2/memPool/rawTxs\"}"
STR3=" -jar ./build/libs/mempoolServer-0.0.1-SNAPSHOT.jar"
echo java $STR1$STR2 $STR3

java $STR1$STR2 $STR3

#example without shell arguments:
#java -Dspring.application.json='{"bitcoind.host":"192.168.3.2","raw-tx-source.url":"http://192.168.14.2:8080/memPool/rawTxs"}' -jar ./build/libs/mempoolServer-0.0.1-SNAPSHOT.jar


