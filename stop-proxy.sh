#!/usr/bin/env bash

# Don't be afraid of how complicated this looks, it's far simpler in reality than it seems
# I just added some strings to be echo'd to the terminal when things succeed or fail
# But the raw commands themselves are simple enough

docker kill redi_frontend_proxy 2>/dev/null && (docker container rm redi_frontend_proxy &>/dev/null && echo "Proxy was stopped") || echo "Proxy was not running (already stopped?)"
docker network rm redi_school 2>/dev/null && echo "Network was deleted" || echo "Network was not found (already deleted?)"
