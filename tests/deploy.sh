#!/bin/bash

# test
docker ps -a
docker logs openwhisk_alarmsprovider_1

# deploy in local openwhisk docker-compose deployment
source local.env
wsk -i project deploy
wsk -i list
