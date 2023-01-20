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
	@echo ssh
	@echo deploy
	@echo workspace
	@echo clean
	@echo ------------------------------------------

_header:
	@echo -------
	@echo Ansible
	@echo -------

build:
	@docker compose build ansible

ssh:
	@docker compose run --rm ansible generar_clave.sh ${REMOTE_HOST}

deploy:
	@docker compose run --rm ansible ansible-playbook -i "${REMOTE_HOST}," playbook.yml --extra-vars "UBUNTU_RELEASE=${UBUNTU_RELEASE}"

workspace:
	@docker compose run --rm ansible /bin/sh

clean:
	@docker compose down -v --remove-orphans
