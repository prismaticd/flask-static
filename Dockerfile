FROM python:3.7

MAINTAINER Prismatic Digital <>

RUN apt update \
      && curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh \
      && bash nodesource_setup.sh \
      && apt install nodejs \
      && npm install -g firebase-tools \
      && npm cache clean \
      && apt install -y -t stretch-backports openssl libssl-dev \
      && apt-get install -y ca-certificates gettext-base \
      && apt-get install -y libev-dev \
      && apt-get install -y python3-dev \
      && pip install flask Frozen-Flask
      && rm -rf /var/lib/apt/lists/*
      
RUN python --version && node --version && firebase --version
