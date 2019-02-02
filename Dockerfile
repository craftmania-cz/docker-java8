FROM openjdk:8-jdk-alpine

MAINTAINER CraftMania.cz, <services@craftmania.cz>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig ipset \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]