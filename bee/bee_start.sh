#!/bin/bash
export DPORT=$(curl -s sidecar:8080/port?PORT="${HOSTNAME}") &&
export PUB_IP=$(curl ifconfig.me)
export BEE_NAT_ADDR=$PUB_IP:$DPORT
bee start
