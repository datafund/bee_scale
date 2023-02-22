#!/bin/bash
curl -s --unix-socket /var/run/docker.sock http://localhost/containers/$v_PORT/json |jq -r '.NetworkSettings.Ports."1634/tcp"[0].HostPort'
