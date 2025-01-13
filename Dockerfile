FROM python:3.13.1-alpine3.19

RUN apk add --no-cache postgresql-client && \
    adduser -D -u 1000 pgcli

WORKDIR /home/pgcli
USER pgcli

COPY --chown=pgcli:pgcli requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --no-warn-script-location --user -r /tmp/requirements.txt && \
    rm -f /tmp/requirements.txt

ENV PATH=/home/pgcli/.local/bin:$PATH

ENTRYPOINT ["pgcli"]
