FROM python:3.14.1-alpine3.21

RUN apk add --no-cache postgresql-client && \
    adduser -D -u 1000 pgcli

WORKDIR /home/pgcli
USER pgcli

COPY --chown=pgcli:pgcli requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --no-warn-script-location pgcli==4.4.0 psycopg[binary,pool]==3.3.2

ENV PATH=/home/pgcli/.local/bin:$PATH

ENTRYPOINT ["pgcli"]
