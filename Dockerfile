# start from base
# FROM ubuntu:18.04
# LABEL maintainer="Kanishka <jainkanishka30@gmail.com>"
# RUN apt-get update -y && \
#     apt-get install -y python-pip python-dev
# # We copy just the requirements.txt first to leverage Docker cache
# COPY ./requirements.txt /app/requirements.txt
# WORKDIR /app
# RUN pip install -r requirements.txt
# COPY . /app
# CMD [ "python", "./app.py" ]
#docker-hub-push-credentials
#FROM openjdk:8
FROM ubuntu:18.04
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]

#COPY target/echoserver.jar /usr/src/app/
#CMD "java -jar /usr/src/app/echoserver.jar"