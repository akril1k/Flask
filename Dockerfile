FROM python:3.10 as builder

COPY requirements.txt .

RUN pip install --no-cache -r requirements.txt

COPY . .

EXPOSE 5000

CMD python3 api.py