#!/usr/bin/env bash
set -euo pipefail
sudo apt-get update
sudo apt-get install -y --no-install-recommends postgresql-client redis-tools rabbitmq-server jq make gcc g++
make setup
