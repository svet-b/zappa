FROM python:3.6-alpine
MAINTAINER "AMMP Technologies" <operations@ammp.io>

COPY requirements.txt /home/requirements.txt

RUN apk update && \
    apk add --no-cache gcc musl-dev libxml2-dev libxslt-dev bash git openssl-dev libffi-dev && \
    pip install virtualenv && \
    virtualenv /var/venv && \
    pip install --no-cache-dir -U pip

RUN source /var/venv/bin/activate && \
    pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r /home/requirements.txt && \
    deactivate

CMD ["/bin/bash"]

