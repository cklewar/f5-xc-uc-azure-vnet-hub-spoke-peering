#!/usr/bin/env bash

set -e

until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

sudo apt-get update
sudo apt-get -y install --no-install-recommends git sqlite3 xz-utils curl net-tools tcpdump traceroute iputils-ping jq wget