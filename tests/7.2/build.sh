#!/usr/bin/env bash
cp -rf 7.2/alpine3.18/* ./
docker buildx build . --output type=docker,name=elestio4test/redis:7.2 | docker load