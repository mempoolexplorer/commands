#!/bin/bash
./upInfrastructure-prod.sh

docker-compose -f bitcoindAdapter1.yml up -d
