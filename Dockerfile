ARG ALPINE_VERSION=latest

FROM alpine:${ALPINE_VERSION}

# Instalar los paquetes necesarios
RUN apk add --no-cache ansible openssh bash shadow && \
    chsh root --shell /bin/bash && \
    apk del shadow

# Copiar el script para crear la clave SSH
COPY generar_clave.sh /usr/local/bin/generar_clave.sh
RUN chmod +x /usr/local/bin/generar_clave.sh

# Definir el directorio actual
WORKDIR /ansible

# Mostrar el usuario y el host en el prompt
ENV PS1='\u@\h:\w\$\040'

# Eliminar el entrypoint original
ENTRYPOINT []

CMD ["/bin/bash"]
