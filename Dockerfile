FROM python:3.10-slim-buster

USER root

WORKDIR /src

COPY ./requirements.txt requirements.txt

RUN apt update -y && apt install -y build-essential libpq-dev

RUN pip install -r requirements.txt

COPY . .

CMD python app.py
