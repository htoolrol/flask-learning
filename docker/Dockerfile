FROM ubuntu:latest

WORKDIR /usr/local/flask-learning
ARG DEBIAN_FRONTEND=noninteractive
ARG APTINST="apt-get install -y"
RUN apt-get update ; apt-get dist-upgrade -y ; $APTINST apt-utils
RUN $APTINST python3 python3-venv python3-dev build-essential
RUN python3 -m venv ./flask-venv
RUN . ./flask-venv/bin/activate ; pip install --upgrade pip ; pip install wheel ; pip install flask ; pip install uwsgi
RUN . ./flask-venv/bin/activate ; pip install pymongo ; pip install psycopg2-binary ; pip install uwsgi

ADD uwsgi.ini first_app.py docker-start.sh ./
ADD flaskr flaskr/

CMD ./docker-start.sh

