#!/bin/bash

dev_appserver.py \
  --host 0.0.0.0 \
  --enable_host_checking False \
  --env_var GITHUB_USER=${GITHUB_USER} \
  --env_var GITHUB_PASS=${GITHUB_PASS} \
  -A githubbadge \
  app.yaml
