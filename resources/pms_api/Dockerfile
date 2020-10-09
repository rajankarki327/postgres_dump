FROM rajankarki327/pms_api
MAINTAINER rajan.karki@ekbana.info
#FROM python:3
ENV PYTHONUNBUFFERED 1
#RUN rm -rf /django-docker/*
COPY . /django-docker
WORKDIR /django-docker
RUN pip install -r requirements.txt
RUN pip install requests
RUN mkdir /var/log/pms_api
RUN pip install django-cors-headers

