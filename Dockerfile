FROM python:3.11
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN apt-get update && apt-get install -y build-essential python3-dev \
    default-libmysqlclient-dev
# RUN python3 -m pip install psycopg2
RUN pip install -r requirements.txt
ADD . /code/
