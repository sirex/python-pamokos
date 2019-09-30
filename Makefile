env: env/.done requirements-dev.txt

env/bin/pip:
	python3.7 -m venv env
	env/bin/pip install --upgrade pip wheel setuptools

env/.done: env/bin/pip requirements-dev.txt
	env/bin/pip install -r requirements-dev.txt
	touch env/.done

env/bin/pip-compile: env/bin/pip
	env/bin/pip install pip-tools

requirements-dev.txt: env/bin/pip-compile requirements-dev.in
	env/bin/pip-compile requirements-dev.in -o requirements-dev.txt

upgrade: env/bin/pip-compile
	env/bin/pip-compile --upgrade requirements-dev.in -o requirements-dev.txt

test: env
	env/bin/py.test -vvxra --log-level=debug --doctest-modules --doctest-glob='*.rst' .

.PHONY: env upgrade test
