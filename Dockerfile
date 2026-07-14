FROM postgres:17

COPY ./pgdata /var/lib/postgresql/data

RUN mkdir -p /var/lib/postgresql/data/pg_tblspc /var/lib/postgresql/data/pg_replslot /var/lib/postgresql/data/pg_notify && \
    chown -R postgres:postgres /var/lib/postgresql/data && \
    chmod -R 700 /var/lib/postgresql/data