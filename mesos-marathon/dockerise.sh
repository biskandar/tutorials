#!/usr/bin/env bash
set -e
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t $DOCKER_USERNAME/mesos-marathon-demo:$BUILD_NUMBER .
docker push $DOCKER_USERNAME/mesos-marathon-demo:$BUILD_NUMBER
