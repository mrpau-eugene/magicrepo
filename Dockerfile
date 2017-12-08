FROM ubuntu:xenial

RUN apt-get -y update
RUN apt-get install -y software-properties-common python2.7 python3.5 python-pip git curl

COPY . /magicrepo
VOLUME /magicrepodist/

RUN pip install virtualenv && virtualenv /virtenv --python=python3.5
ENV PATH=/virtenv/bin:$PATH

CMD cd /magicrepo && pip install -r requirements.txt && make dist && cp -r /magicrepo/out/* /magicrepodist/
