FROM bellsoft/liberica-openjre-alpine:17

ARG PAPER_VERSION

RUN apk add --no-cache curl jq su-exec && \
    PAPER_API=https://papermc.io/api/v2/projects/paper && \
    PAPER_BUILD=$(curl -s $PAPER_API/versions/$PAPER_VERSION | jq -r '.builds[-1]') && \
    PAPER_DOWNLOAD=$(curl -s $PAPER_API/versions/$PAPER_VERSION/builds/$PAPER_BUILD | jq -r '.downloads.application.name') && \
    curl -s -o /paper.jar $PAPER_API/versions/$PAPER_VERSION/builds/$PAPER_BUILD/downloads/$PAPER_DOWNLOAD && \
    apk del curl jq

COPY entrypoint.sh /

WORKDIR /paper
EXPOSE 25565
ENV PUID=1000 \
    PGID=1000 \
    JAVA_OPTS="-Xms2G -Xmx2G" \
    PAPER_OPTS="--nogui"

ENTRYPOINT ["/entrypoint.sh"]
