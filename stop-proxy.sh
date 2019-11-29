#!/usr/bin/env bash

docker kill redi_frontend_proxy 2>/dev/null && (docker container rm redi_frontend_proxy &>/dev/null && echo "Proxy was stopped") || echo "Proxy was not running (already stopped?)"
docker network rm redi_school 2>/dev/null && echo "Network was deleted" || echo "Network was not found (already deleted?)"
