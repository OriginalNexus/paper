Paper Minecraft Server Docker image
---

This is a simple [Paper](https://github.com/PaperMC/Paper) Minecraft Server
Docker image.

# Prerequisites

You need `docker` and `docker-compose` available on your system.

# Setup

Modify the `.env` file accordingly:
 * `PUID` - User id used to run the server. Should match host user id.
 * `PGID` - Group id used to run the server. Should match host group id.
 * `ROOT` - Path to a host directory where to mount the server files.

# Usage

## Run

Use the provided `docker-compose.yml` file and run:

```shell
docker-compose up -d
```

## Attach

To interact with the server and issue commands, run:
```shell
docker attach paper
```

Exit using `Ctrl-P Ctrl-Q`

# Update

To update to the latest version, run:
```shell
docker-compose pull
docker-compose up -d
```

To use a specific version, modify the image tag inside `docker-compose.yml`

# Config

The following environment variables can be changed:
 * `PUID` - User id used to run the server. Default `1000`.
 * `PGID` - Group id used to run the server. Default `1000`.
 * `JAVA_OPTS` - Java options. Default `-Xms2G -Xmx2G`.
 * `PAPER_OPTS` - Paper options. Default `--nogui`.
