FROM python:2-alpine

RUN apk add --no-cache --virtual .build-deps \
      gcc \
      make \
      libc-dev \
      openssl-dev \
      python-dev \
      libffi-dev && \
    pip install ansible-lint && \
    apk del --purge .build-deps
