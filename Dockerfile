FROM python:3.8

WORKDIR /tmp

COPY . /tmp

RUN ls -lah /tmp
RUN pip install -r "/tmp/requirements.txt"

EXPOSE 8080

ENV FLASK_APP = /tmp/app.py
ENV SERVER_NAME = '0.0.0.0'

CMD ["gunicorn", "--config", "gunicorn_config.py", "app:app"]

# $ docker build -t owa . && docker run -p 80:80 owa:latest 