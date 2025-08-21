#!/bin/bash

docker exec tpss-postgres psql -h localhost -U postgres -d tpss -c "TRUNCATE TABLE access.sessions"
docker exec tpss-postgres pg_dump -h localhost -d tpss -U postgres -C >docker-entrypoint-initdb.d/091_tpss-init.sql
