FROM armv7/armhf-ubuntu:16.04

MAINTAINER atoato88 <atoato88+dockerhub@gmail.com>

RUN apt update
RUN apt install -y git python curl build-essential python-dev libxml2 libxml2-dev libxslt1-dev zlib1g-dev
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python
RUN mkdir /source
COPY source /source/
RUN cd /source && pip install -r requirements.txt

CMD ["/source/run.sh"]

