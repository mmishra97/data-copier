FROM python:3.7
#install os modules

RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*

#copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirement.txt /data-copier

#install application dependencies
RUN pip install -r /data-copier/requirement.txt

