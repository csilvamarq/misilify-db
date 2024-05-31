FROM mysql:8.0

# Variables de entorno
ENV MYSQL_ROOT_PASSWORD=
ENV MYSQL_DATABASE=
ENV MYSQL_USER=
ENV MYSQL_PASSWORD=

# Copiar el script SQL al contenedor
COPY database.sql /docker-entrypoint-initdb.d/