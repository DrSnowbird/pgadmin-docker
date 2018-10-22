#!/bin/bash -x

POSTGRES_IMAGE=postgres
instanceName=postgresql-docker
POSTGRES_PASSWORD="mysecretpassword"
POSTGRES_PORT=5432

function cleanup() {
    if [ ! "`docker ps -a|grep ${instanceName}`" == "" ]; then
         docker rm -f ${instanceName}
    fi
}

#### ---- clean up ----
#docker rm -f $(dps -a|grep postgresql-docker|awk '{print $1;}')
cleanup

#### ---- run a new docker instance ----
# docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres
docker run --name ${instanceName} -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -p ${POSTGRES_PORT}:${POSTGRES_PORT} -d ${POSTGRES_IMAGE}
