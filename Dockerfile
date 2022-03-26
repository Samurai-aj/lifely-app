FROM python:3.6-alpine3.7

RUN mkdir -p /home/app

WORKDIR /home/app

COPY ./app /home/app

#WORKDIR /home/app

#install dependencys for numpy
RUN apk add --no-cache --update python3 python3-dev gcc gfortran musl-dev libffi-dev openssl-dev

RUN pip install -U pip

RUN pip install -r requirements.txt
#i added this line because when run locally, protobuf neede to be upgraded
RUN pip install --upgrade protobuf

CMD [ "streamlit","run", "home/app/heart_disease_app.py"]