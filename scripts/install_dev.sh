#!/bin/sh
# Used to run local development instances

python -m venv .venv
source .venv/bin/activate

python -m pip install --upgrade pip

python ./scripts/start_dev.py --full