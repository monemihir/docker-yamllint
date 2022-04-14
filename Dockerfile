FROM python:alpine
LABEL maintainer="Mihir Mone <monemihir@hotmail.com>"

ARG YAMLLINT_VERSION

RUN pip install yamllint==${YAMLLINT_VERSION}

COPY docker-entrypoint.sh /usr/local/bin/

WORKDIR /workdir
ENTRYPOINT ["docker-entrypoint.sh"]
