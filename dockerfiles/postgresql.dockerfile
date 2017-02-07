FROM postgres:9.6.1
MAINTAINER Mitchell Bundy <mitch@bundy.ca>

COPY ./publish.sql /docker-entrypoint-initdb.d/

ENV PGDATA=/var/lib/postgresql/data/pgdata
