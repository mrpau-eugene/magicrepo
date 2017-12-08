FROM ubuntu:xenial

RUN apt-get -y update
RUN apt-get install -y software-properties-common python2.7 python3.5 python-pip git curl

COPY . /magicrepo
VOLUME /magicrepodist/

ENV PIP="/virtenv/bin/pip"
ENV PYTHON="/virtenv/bin/python"

RUN pip install virtualenv && virtualenv /virtenv --python=python3.5

CMD cd /magicrepo && pip install -r requirements.txt && cp /magicrepo/dist/* /magicrepodist/
