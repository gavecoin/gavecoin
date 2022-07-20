#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-gavecoin/gavecoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/gavecoind docker/bin/
cp $BUILD_DIR/src/gavecoin-cli docker/bin/
cp $BUILD_DIR/src/gavecoin-tx docker/bin/
strip docker/bin/gavecoind
strip docker/bin/gavecoin-cli
strip docker/bin/gavecoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
