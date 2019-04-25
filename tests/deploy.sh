#!/bin/bash

# test
pushd incubator-openwhisk-devtools/docker-compose

make add-catalog create-provider-alarms create-provider-kafka create-provider-cloudant

popd

docker ps -a
docker logs openwhisk_alarmsprovider_1

# deploy in local openwhisk docker-compose deployment
source local.env
wsk -i project deploy
wsk -i list
