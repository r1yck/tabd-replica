FROM postgres:17
COPY ./pgdata /var/lib/postgresql/data
RUN chown -R postgres:postgres /var/lib/postgresql/data && chmod -R 700 /var/lib/postgresql/data
