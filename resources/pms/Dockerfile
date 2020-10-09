FROM rajankarki327/pms_v2
MAINTAINER rajan.karki@ekbana.info
#FROM python:3
ENV PYTHONUNBUFFERED 1
COPY . /django-docker
RUN mkdir /var/log/pms
WORKDIR /django-docker
RUN pip install -r requirements.txt
RUN pip install requests

