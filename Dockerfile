FROM mysql:8.0

# Variables de entorno
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=misilify
ENV MYSQL_USER=misilify
ENV MYSQL_PASSWORD=misilify

# Copiar el script SQL al contenedor
COPY database.sql /docker-entrypoint-initdb.d/