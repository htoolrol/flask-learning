#!/bin/sh
set -x
export DEBIAN_FRONTEND=noninteractive
apt-get update ; apt-get dist-upgrade -y ; apt-get install -y apt-utils
cd /usr/local/flask-learning
apt-get install -y python3 python3-venv
python3 -m venv ./flask-venv
. ./flask-venv/bin/activate
pip install --upgrade pip
pip install wheel
pip install flask
pip install pymongo
pip install psycopg2-binary
