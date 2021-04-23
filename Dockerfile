FROM python:3.8-alpine
MAINTAINER "AMMP Technologies" <operations@ammp.io>

RUN apk update && \
    apk add --no-cache gcc build-base musl-dev postgresql-dev libxml2-dev libxslt-dev bash git openssl-dev libffi-dev gettext && \
    pip install --no-cache-dir -U pip  && \
    pip install pipenv

CMD ["/bin/bash"]

