# Commands folder

This a utility commands folder.

* `docker-all.sh` Compiles the whole project via gradle, generating docker images. Also removes docker dangling images.
* `docker-compose.yml` This is the main script for docker-compose. Launches all services.
* `gogs-docker-compose.yml` This is a docker compose for launching a gogs service (git server) that it's used by configuration server.
* `logbitcond1.sh` Script for showing in console bitcoindAdapter log.
* `logmempoolrecorder1.sh` Script for showing in console mempoolRecorder log.
* `logtxmempool1.sh` Script for showing in console txmempool log.
* `txMempoolTest.yml` Script for launching an additional txMemPool service to execute commands via /operations/recalculateAllStats REST service

# Useful docker commands:


* `docker-compose up -d` Executes docker-compose.yml (launching all services) in console detached mode.
* `docker-compose down` Shutdown all services, volumes are preserved
* `docker-compose down -v` Shutdown all services and delete volumes and networks. IT MUST NOT be used for file gogs-docker-compose.yml as it will delete git configuration.
* `docker-compose -f gogs-docker-compose.yml up -d` Executes gogs-docker-compose.yml (launching gogs for git configuration)

# Useful tips:

Edit systemfile /etc/hosts to add host names so you can use human-friendly names instead of ips defined in .env files.

For example:

	172.18.0.5	eureka
	172.18.0.4	configuration
	172.18.0.2	bitcoindAdapterMongo1
	172.18.0.7	mempoolRecorderMongo1
	172.18.0.3	bitcoindAdapter1
	172.18.0.8	bitcoindAdapter2
	172.18.0.6	txMemPool1
	172.18.0.12	mempoolRecorder
	172.18.0.13	txMemPoolTest
	172.18.0.14	txMempoolMongo1
	172.18.0.15	adminServer
	172.18.0.17	gogs
