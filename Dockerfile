FROM python:3.13.0-alpine3.19

LABEL maintainer="yann.lacroix.dev@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/Brawdunoir/pgcli"

RUN adduser -D -u 1000 pgcli
USER pgcli

WORKDIR /home/pgcli

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir --no-warn-script-location --user -r /tmp/requirements.txt

ENV PATH=/home/pgcli/.local/bin:$PATH

ENTRYPOINT ["pgcli"]
