# syntax=docker/dockerfile:1.2

FROM node:18-bullseye

LABEL json-server.version="0.0.1"
LABEL json-server.release-date="17.08.2022"
LABEL json-server.image.authors="mrcl@terminal.li"

RUN apt-get update && apt-get install -y \
  git \
  curl \
  nano \
  wget \
  netbase \
  gnupg \
  dirmngr \
  autoconf \
  automake \
  bzip2 \
  dpkg-dev \
  file \
  imagemagick \
  libcurl4-openssl-dev \
  libdb-dev \
  libevent-dev \
  libffi-dev \
  iproute2 \
  bash-completion \
  && rm -rf /var/lib/apt/lists/*


RUN npm install -g npm@8.17.0 && npm install -g json-server

COPY json-server.json /json-server.conf/json-server.json
COPY data/db.json /data/db.json

WORKDIR /data
VOLUME /data

EXPOSE 14145

COPY run.sh /json-server.conf/run.sh

ENTRYPOINT [ "/json-server.conf/run.sh" ]
