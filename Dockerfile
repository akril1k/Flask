FROM python:3.8

#RUN apk update && apk add --no-cache git \
 #   build-essential


COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip && pip install -r /requirements.txt

COPY api_descript.json /api_descript.json
COPY api.py /api.py

EXPOSE 5000

CMD python /api.py