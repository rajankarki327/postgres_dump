FROM python:3
MAINTAINER rajan.karki@ekbana.info
#FROM python:3
ENV PYTHONUNBUFFERED 1
#RUN rm -rf /django-docker/*
COPY . /django-docker
WORKDIR /django-docker
RUN pip install -r requirements.txt
RUN pip install requests

