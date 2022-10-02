#!/usr/bin/env sh
set -euo pipefail

echo "eula=true" >eula.txt
chown ${PUID}:${PGID} .
exec su-exec ${PUID}:${PGID} java ${JAVA_OPTS} -jar /paper.jar ${PAPER_OPTS}
