#!make

help: _header
	${info }
	@echo Opciones:
	@echo ---------
	@echo build
	@echo ssh-key
	@echo workspace
	@echo clean
	@echo ---------

_header:
	@echo -------
	@echo Ansible
	@echo -------

build:
	@docker compose build --pull

workspace:
	@docker compose run --rm ansible

ssh-key:
	@docker compose run --rm ansible generar_clave.sh

clean:
	@docker compose down -v --remove-orphans
