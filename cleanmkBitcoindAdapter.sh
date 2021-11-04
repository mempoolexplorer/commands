docker stop bitcoind_adapter1
docker rm bitcoind_adapter1
docker volume rm commands_bitcoind_adapter1_volume
./mkBitcoindAdapter.sh
