#!/bin/bash -x

POSTGRES_IMAGE=postgres
DB_NAME=postgresql-docker
POSTGRES_PASSWORD="mysecretpassword"
POSTGRES_PORT=5432

# docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres
docker run --name ${DB_NAME} -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -p ${POSTGRES_PORT}:${POSTGRES_PORT} -d ${POSTGRES_IMAGE}
