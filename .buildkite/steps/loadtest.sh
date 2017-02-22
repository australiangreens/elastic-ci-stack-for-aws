#!/bin/bash
set -eu

docker pull ubuntu:16.04
docker pull wordpress
docker info
docker images
