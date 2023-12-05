#!/usr/bin/env bash
cp -fr 6.2/alpine3.18/* ./
docker buildx build . --output type=docker,name=elestio4test/redis:6.2 | docker load