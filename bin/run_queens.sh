#!/bin/bash

cd "$(dirname "$0")/.."

if [ -d "src/venv" ]; then
  source "src/venv/bin/activate"
fi

python3 src/queens_puzzle.py


