#!/bin/sh
cd ./solr
docker build -f ./Dockerfile -t "solr-1ws:dev" .
cd ../zookeeper
docker build -f ./Dockerfile -t "zookeeper-1ws:dev" .
cd ..
docker-compose -f ./docker-compose.yml build
docker-compose -f ./docker-compose.yml up -d
