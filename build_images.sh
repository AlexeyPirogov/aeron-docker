#!/usr/bin/env bash

docker build -t centos_aeron_base images/centos_aeron_base
docker build -t aeron_ping images/aeron_ping
docker build -t aeron_pong images/aeron_pong