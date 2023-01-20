ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

# Definir el directorio actual
WORKDIR /root

# Instalar los paquetes necesarios
RUN apk add ansible openssh

# Copiar el script para crear la clave SSH
COPY generar_clave.sh /usr/local/bin/generar_clave.sh
RUN chmod +x /usr/local/bin/generar_clave.sh
