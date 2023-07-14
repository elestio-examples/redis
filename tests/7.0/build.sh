#!/usr/bin/env bash
cp -r 7.0/* ./
docker buildx build . --output type=docker,name=elestio4test/redis:7.0 | docker load