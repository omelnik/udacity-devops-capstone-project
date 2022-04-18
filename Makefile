## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

VENV   = .venv
PIP    = $(VENV)/bin/pip3
PYLINT = $(VENV)/bin/pylint
PYTHON = $(VENV)/bin/python3

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv $(VENV)

install: setup
	# This should be run from inside a virtualenv
	$(PIP) install --upgrade pip &&\
		$(PIP) install -r requirements.txt

lint:
	hadolint Dockerfile;
	$(PYLINT) --disable=R,C,W1203,W1202 ./app/main.py

all: install lint test