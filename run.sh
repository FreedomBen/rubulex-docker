#!/usr/bin/env bash

sudo podman run \
  --rm \
  -it \
  --name rubulex \
  --publish 4567:4567 \
  freedomben/rubulex
