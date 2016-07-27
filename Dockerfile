FROM ubuntu:14.04
RUN apt-get update

RUN apt-get -y install expect nodejs npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY hubot-scripts.json external-scripts.json package.json /opt/hdebot/
COPY scripts /opt/hdebot/scripts
COPY bin /opt/hdebot/bin

WORKDIR /opt/hdebot

RUN npm install .
RUN npm install hubot-hipchat

RUN chmod 755 /opt/hdebot/bin/hubot
