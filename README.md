Pgcli is a command line interface for Postgres with auto-completion and syntax highlighting.

Light and secure pgcli image based on [Alpine Linux](https://alpinelinux.org/).

# Quickstart

```bash
# Oneline
docker run -it --rm --name pgcli ghcr.io/brawdunoir/pgcli:latest -h my-postgres-host my-database-name my-postgres-user

# Example
## Create docker network for DNS resolution
docker network create db-network

## Start a postgres server
docker run -d \
  --name postgres-container \
  --network db-network\
  --network-alias postgres-database \
  -e POSTGRES_USER=mypostgres \
  -e POSTGRES_PASSWORD=mypassword \
  -e POSTGRES_DB=mydatabase \
  postgres:latest

## Run pgcli image and connect using mypassword
docker run --network=db-network -it --rm --name pgcli ghcr.io/brawdunoir/pgcli:latest -h postgres-database mydatabase mypostgres
```
