FROM python:slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "waitress-serve", "--listen=0.0.0.0:5000", "wsgi:app"]
