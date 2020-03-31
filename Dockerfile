FROM python:3.8-alpine
MAINTAINER "AMMP Technologies" <operations@ammp.io>

RUN apk update && \
    apk add --no-cache gcc musl-dev postgresql-dev libxml2-dev libxslt-dev bash git openssl-dev libffi-dev && \
    pip install --no-cache-dir -U pip  && \
    pip install pipenv

CMD ["/bin/bash"]

