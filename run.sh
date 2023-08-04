#!/usr/bin/env bash

/tmp/docker_init.sh

echo "Starting netsage-netflow-importer-daemon"
netsage-netflow-importer-daemon --nofork  --config /etc/netsage/deidentifier/netsage_netflow_importer.xml
