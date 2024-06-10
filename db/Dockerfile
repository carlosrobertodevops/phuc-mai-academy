FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root_academy
ENV MYSQL_DATABASE=academy
ENV MYSQL_USER=academy
ENV MYSQL_PASSWORD=@academy

# COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./my.cnf /etc/mysql/my.cnf

VOLUME ["/var/lib/mysql"]

EXPOSE 3306