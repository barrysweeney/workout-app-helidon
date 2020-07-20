
FROM mysql

ENV MYSQL_DATABASE workout

# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./docker/data/ /docker-entrypoint-initdb.d/