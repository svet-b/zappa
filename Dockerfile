FROM python:3.6-alpine
MAINTAINER "James Burke" <james.burke@eon-offgrid.com>

COPY requirements.txt /home/requirements.txt

RUN apk add --no-cache gcc musl-dev libxml2-dev libxslt-dev postgresql-dev bash git openssl-dev libffi-dev && \
    pip install virtualenv && \
    virtualenv /var/venv && \
    pip install --no-cache-dir -U pip && \
    git -C / clone https://gitlab.com/eogs-os/Zappa.git zappa
    

RUN source /var/venv/bin/activate && \
    pip install -e /zappa && \
    pip install --no-cache-dir -r /home/requirements.txt && \
    pip install pip==9.0.3 && \
    deactivate

CMD ["/bin/bash"]

