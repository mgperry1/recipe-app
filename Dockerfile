FROM python:3.7-alpine
MAINTAINER Matt Perry

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /aoo
WORKDIR /app
COPY ./app /app

RUN adduser -d user
USER user
