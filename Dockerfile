FROM python:3.10-slim-buster

USER root

WORKDIR /app

COPY ./app /app 

RUN apt update -y && apt install -y build-essential libpq-dev

RUN pip install -r requirements.txt

CMD python app.py
