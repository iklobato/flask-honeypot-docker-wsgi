# (Flask + Docker + WSGI) honeypot
A honeypot based on https://github.com/joda32/owa-honeypot

![](docs/OWA_honeypot_1.png)

## how to install
- git clone https://github.com/henriqueblobato/flask-honeypot-docker-wsgi.git
- cd flask-honeypot-docker-wsgi
- docker build -t hp . && docker run -p 8080:8080 owa:latest

