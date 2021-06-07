FROM python:3.9.4

COPY requirements.txt .
COPY app.py .

RUN pip install -r requirements.txt

CMD gunicorn -b 0.0.0.0:80 app:app
