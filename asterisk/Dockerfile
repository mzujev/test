# vim:set ft=dockerfile:
FROM alpine:edge

MAINTAINER Zujev Mihail <z.m.c@list.ru>

RUN apk add --update \
      asterisk \
			asterisk-sounds-en \
&&  rm -rf /var/cache/apk/* \
           /var/tmp/*
ADD	entrypoint.sh /entrypoint.sh

#EXPOSE 5060/udp 8088/tcp 10000-10099/udp

ENTRYPOINT ["/entrypoint.sh"]
