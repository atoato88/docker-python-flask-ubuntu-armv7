#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

export FLASK_APP=server.py
flask run --host=0.0.0.0 --port=8080
