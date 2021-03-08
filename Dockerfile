# FROM  scratch si el codigo está compilado de forma estática. Alpine es un conjunto de librerias
FROM alpine
#creacion del directorio, equivalente a mkdir -p /app && cd app
WORKDIR /app
#copia
COPY src .
#instala el paquete php, equivalente yum install php
RUN apk add php
#php index.php se traduce en los 2 siguientes comandos
ENTRYPOINT /usr/bin/php
CMD -f index.php -S 0.0.0.0:8080
