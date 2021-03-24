#!/bin/sh
cd /usr/local/flask-learning
. ./flask-venv/bin/activate
#python3 first_app.py
uwsgi --ini uwsgi.ini
