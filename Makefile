#!make

ifneq (,$(wildcard ./.env))
    include .env
    export
else
$(error No se encuentra el fichero .env)
endif

help: _header
	${info }
	@echo Opciones:
	@echo ------------------------------------------
	@echo build
	@echo workspace
	@echo ssh
	@echo clean
	@echo ------------------------------------------

_header:
	@echo -------
	@echo Ansible
	@echo -------

build:
	@docker compose build ansible

workspace:
	@docker compose run --rm ansible /bin/sh

ssh:
	@docker compose run --rm ansible generar_clave.sh ${REMOTE_HOST}

clean:
	@docker compose down -v --remove-orphans
