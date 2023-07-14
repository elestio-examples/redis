#!/usr/bin/env bash
cp -r 6.0/* ./
docker buildx build . --output type=docker,name=elestio4test/redis:6.0 | docker load