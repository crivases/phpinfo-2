# FROM  scratch si el codigo está compilado de forma estática. Alpine es un conjunto de librerias
FROM alpine
#creacion del directorio, equivalente a mkdir -p /app && cd app
WORKDIR /app
#copia
COPY src .
