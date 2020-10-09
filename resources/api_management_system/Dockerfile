FROM rajankarki327/api_management_system
MAINTAINER rajan.karki@ekbana.info
#FROM python:3
ENV PYTHONUNBUFFERED 1
#RUN rm -rf /django-docker/*
COPY . /django-docker
#RUN mkdir /var/log/api_management_system
WORKDIR /django-docker
RUN pip install -r requirements.txt
RUN pip install requests

