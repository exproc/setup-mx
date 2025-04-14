#!/bin/bash

read -p Domain_Name: DOMAINN 
docker run -it --rm -v $(pwd)/appdata/synapse:/data -e SYNAPSE_SERVER_NAME=mx.${DOMAINN}  -e SYNAPSE_REPORT_STATS=no  -e UID=$(id -g) -e GID=$(id -g) ghcr.io/element-hq/synapse generate
ls -la $(pwd)/appdata/synapse