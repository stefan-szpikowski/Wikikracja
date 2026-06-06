#!/bin/sh
# Used to run local development instances

if ! redis-cli ping >/dev/null 2>&1; then
    echo -e "\e[32m[Redis]\e[0m Redis server not running, starting..."
    redis-server --daemonize yes >/dev/null 2>&1
    echo -e "\e[32m[Redis]\e[0m Redis server started."
else
    echo -e "\e[33m[Redis]\e[0m Redis server already running."
fi

python -m venv .venv
source .venv/bin/activate

python -m pip install --upgrade pip

python ./scripts/start_dev.py --full