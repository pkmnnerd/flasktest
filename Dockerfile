FROM python:slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "--threads", "4", "--worker-class=gthread", "wsgi:app"]
