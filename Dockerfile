# hadolint ignore=DL3007
FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
    minder \
    && rm -rf \
        /tmp/* \
    && mv /usr/bin/com.github.phase1geo.minder /usr/bin/minder

COPY /root /
EXPOSE 3000
EXPOSE 3001

LABEL \
    org.opencontainers.image.title="Minder" \
    org.opencontainers.image.description="Mnider mind mapper in the browser" \
    org.opencontainers.image.version="1.0" \
    org.opencontainers.image.licenses="GPL-3.0" \
    org.opencontainers.image.authors="Olivier Tremblay-Noel" \
    org.opencontainers.image.url="https://hub.docker.com/repository/docker/oliviertremblaynoel/minder-docker" \
    org.opencontainers.image.source="https://github.com/oliviertremblaynoel/minder-docker"
