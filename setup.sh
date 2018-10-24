#!/usr/bin/env bash

# Remove previous virtualenv
rm  -v -rf .venv

# Create a new virtualenv
virtualenv .venv

# Activate virtualenv
source .venv/bin/activate

# pip upgrade and setuptools
pip install --no-cache-dir --upgrade pip setuptools

# pip install reqs
pip install --no-cache-dir -r requirements.txt
