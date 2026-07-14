FROM postgres:17
# Copia seus dados
COPY ./pgdata /var/lib/postgresql/data

RUN mkdir -p /var/lib/postgresql/data/pg_twophase \
             /var/lib/postgresql/data/pg_tblspc \
             /var/lib/postgresql/data/pg_replslot \
             /var/lib/postgresql/data/pg_notify \
             /var/lib/postgresql/data/pg_snapshots \
             /var/lib/postgresql/data/pg_subtrans \
             /var/lib/postgresql/data/pg_commit_ts && \
    chown -R postgres:postgres /var/lib/postgresql/data && \
    chmod -R 700 /var/lib/postgresql/data

USER postgres