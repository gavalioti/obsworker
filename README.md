# obsworker
OBS worker instance running in docker container

## Configuration 
.. is done via environment variables (or file), e.g.:

obsworker.env
> OBS_SRC_SERVER="server:5352"
> OBS_REPO_SERVERS="server:5252"
> OBS_WORKER_INSTANCES="1"
> OBS_WORKER_JOBS="8"
> OBS_WORKER_PORTBASE=12345

Note, that OBS master must be able to connect to the worker instance on given
OBS_WORKER_PORTBASE.

## Starting OBS worker
docker run --privileged --env-file obsworker.env -p 12345:12345 docker.io/quobyte/obsworker
