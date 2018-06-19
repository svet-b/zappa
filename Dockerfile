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
    # lxml && \
    # pip install --no-cache-dir arrow && \
    # pip install --no-cache-dir beautifulsoup4  && \
    # pip install --no-cache-dir bottle && \
    # pip install --no-cache-dir bottle-sqlalchemy && \
    # pip install --no-cache-dir configobj && \
    # pip install --no-cache-dir psycopg2 && \
    # pip install --no-cache-dir SQLAlchemy && \
    # pip install --no-cache-dir pyopenssl && \
    # pip install --no-cache-dir pyasn1  && \
    # pip install --no-cache-dir ndg-httpsclient && \
    # pip install --no-cache-dir PyJWT && \
    # pip install --no-cache-dir logmatic-python && \
    # pip install --no-cache-dir pytz && \
    # pip install --no-cache-dir influxdb && \
    # pip install --no-cache-dir pygeohash && \
    # pip install --no-cache-dir cryptography==2.1.4 && \
    # pip install --no-cache-dir numpy && \
    # pip install boddle && \
    deactivate

CMD ["/bin/bash"]

