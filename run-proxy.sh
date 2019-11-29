#!/usr/bin/env bash

# Don't be afraid of how complicated this looks, it's far simpler in reality than it seems
# I just added some strings to be echo'd to the terminal when things succeed or fail
# But the raw commands themselves are simple enough

docker network create redi_school &>/dev/null && echo "Network was created" || echo "Network already existed"

if [ -z "$(docker ps | grep redi_frontend_proxy)" ]; then
  container_id=$(docker run -d --restart always \
          --name redi_frontend_proxy \
          --network redi_school \
          -p 80:80 \
          -p 443:443 \
          -v /var/run/docker.sock:/tmp/docker.sock:ro \
          christhomas/nginx-proxy:alpine)

  echo "Proxy started, container id = ${container_id}"
else
  echo "Proxy was already running"
fi
