#!/bin/bash
curl -s --unix-socket /var/run/docker.sock http://localhost/containers/$v_PORT/json |jq -r '.HostConfig.PortBindings."1634/tcp"[].HostPort'
