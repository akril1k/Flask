FROM python:3.8

EXPOSE 5000

COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip && pip install -r /requirements.txt

COPY api_descript.json /api_descript.json
COPY api.py /api.py



CMD python /api.py