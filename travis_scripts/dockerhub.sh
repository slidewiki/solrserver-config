#!/bin/bash

docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker build -t slidewiki/solr:latest-dev .
docker push slidewiki/solr:latest-dev
