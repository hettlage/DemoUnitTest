#!/bin/bash

cd $HOME
python -V
python -m venv .venv
source ./.venv/bin/activate
which python
python -m pip install flake8
flake8 --format=pylint --exit-zero calculator/ mytests/ > flake8-out.txt
