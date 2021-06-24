.PHONY: docs
.DEFAULT_GOAL := docs

install:
	npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3
	npm i -g serve

docs:
	antora generate antora-playbook.yml --to-dir dist/ --clean

fetch:
	antora generate antora-playbook.yml --to-dir dist/ --clean --fetch

stacktrace:
	antora generate antora-playbook.yml --to-dir dist/ --clean --fetch --stacktrace

serve:
	serve dist/

open:
	open dist/showcase-architecture-documentation/0.1.0/index.html