#!make

help: _header
	${info }
	@echo Opciones:
	@echo ---------
	@echo build
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

clean:
	@docker compose down -v --remove-orphans
