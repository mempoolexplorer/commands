# zookeeper and kafka must be as separated as possible to avoid InconsistentClusterIdException.
docker-compose \
    -f zookeeper.yml \
    -f configurationServer.yml \
    -f adminServer.yml \
    -f serviceDiscoveryServer.yml \
    -f zuul-gateway.yml \
    -f kafka1.yml \
    up -d
