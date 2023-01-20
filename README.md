# ansible-docker

Instalar [Docker](https://www.docker.com) en una máquina Ubuntu remota mediante [Ansible](https://www.ansible.com).

## Funcionamiento

1. Configurar el fichero `.env` a partir del fichero `env-example`.

2. Construir el contenedor:

    ```shell
    make build
    ```

3. Crear la clave SSH para el host remoto:

    ```shell
    make ssh
    ```

4. Lanzar el playbook sobre el host remoto:

    ```shell
    make deploy
    ```

## Referencias

- [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
- [How To Install Docker Using Ansible](https://medium.com/codex/how-to-install-docker-using-ansible-84d40005169)
- [Ansible - Alpine Linux](https://wiki.alpinelinux.org/wiki/Ansible)
