# vim:set ft=dockerfile:
FROM python:2

MAINTAINER Zujev Mihail <z.m.c@list.ru>

RUN pip install ari redis

ADD	entrypoint /entrypoint

ENTRYPOINT ["python","/entrypoint"]
