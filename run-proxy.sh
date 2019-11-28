#!/usr/bin/env bash

docker network create redi_school

docker run -d --restart always \
        --name redi_frontend_proxy \
        --network redi_school \
        -p 80:80 \
        -p 443:443 \
        -v /var/run/docker.sock:/tmp/docker.sock:ro \
        christhomas/nginx-proxy:alpine
