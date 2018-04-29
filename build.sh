#!/usr/bin/env bash

set -e

docker build -t cristobalcl/deepo:jupyterlab .
docker push cristobalcl/deepo
