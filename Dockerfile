FROM python:alpine
LABEL maintainer="Mihir Mone <monemihir@hotmail.com>"

RUN pip install yamllint

COPY docker-entrypoint.sh /usr/local/bin/

WORKDIR /workdir
ENTRYPOINT ["docker-entrypoint.sh"]
