FROM python:3.12-slim-bookworm

WORKDIR /app

COPY ./app /app 

RUN apt update -y && apt install postgresql postgresql-contrib -y
RUN apt update -y && apt install -y build-essential libpq-dev
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

EXPOSE 5153
ENV DB_USERNAME=c4user
ENV DB_PASSWORD=bXlwYXNzd29yZA==
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5432
ENV DB_NAME=prj3db

CMD python app.py
