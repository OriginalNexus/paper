Paper Minecraft Server Docker image
---

This is a simple [Paper](https://github.com/PaperMC/Paper) Minecraft Server
Docker image.

# Prerequisites

You need `docker` and `docker-compose` available on your system.

# Config

Modify the `.env` file accordingly:
 * `ROOT` - Path to a host directory where to mount the server files. Default `./data`.
 * `PUID` - User id used to run the server, should match host user id. Default `1000`.
 * `PGID` - Group id used to run the server, should match host group id. Default `1000`.
 * `JAVA_OPTS` - Java options. Default `-Xms2G -Xmx2G`.
 * `PAPER_OPTS` - Paper options. Default `--nogui`.

# Usage

## Run

Use the provided `docker-compose.yml` file and run:

```shell
docker-compose up -d
```

## Stop
To stop the server, run:

```shell
docker-compose stop
```

## Attach

To interact with the server and issue commands, run:
```shell
docker attach paper
```

Detach using `Ctrl-P Ctrl-Q`

# Update

To update to the latest version, run:
```shell
docker-compose pull
docker-compose up -d
```

To use a specific version, add the image tag inside `docker-compose.yml`:

```yaml
services:
  paper:
    container_name: paper
    image: rneacsu/paper:1.19.2 # <-- Here
```
