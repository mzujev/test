# vim:set ft=dockerfile:
FROM alpine:edge

MAINTAINER Zujev Mihail <z.m.c@list.ru>

RUN apk add --update \
      asterisk \
&&  rm -rf /var/cache/apk/* \
           /var/tmp/*

ADD	entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
