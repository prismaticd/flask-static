
FROM python:3.7

MAINTAINER Prismatic Digital <>

RUN apt-get update \
      && curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh \
      && bash nodesource_setup.sh \
      && apt-get install nodejs \
      && npm install -g firebase-tools \
      && npm cache clean --force \
      && apt-get install -y libssl-dev \
      && apt-get install -y ca-certificates gettext-base \
      && apt-get install -y libev-dev \
      && pip install flask Frozen-Flask \
      && rm -rf /var/lib/apt/lists/*

RUN python --version && node --version && firebase --version
