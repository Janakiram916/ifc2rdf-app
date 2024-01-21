SRC_PATH := "./ifc2rdf-app"

.PHONY: install
install: ## Installs all dependencies
	poetry install

.PHONY: requirements.txt
requirements.txt: ## Creates requirements.txt file
	poetry export -f requirements.txt --output requirements.txt --without-hashes

.PHONY: ifc2rdfapp
ifc2rdfapp:
	poetry run flet ifc2rdf_app/ifc2rdfApp.py