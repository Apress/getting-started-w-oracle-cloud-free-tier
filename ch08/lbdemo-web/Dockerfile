FROM python:3
LABEL MAINTAINER="Adrian Png <adrian.png@fuzziebrain.com>"

ENV FLASK_APP=main.py \
    FLASK_PORT=5000

WORKDIR /app

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir -r /tmp/requirements.txt && \
  rm -f /tmp/requirements.txt

CMD [ "sh", "-c", "flask run --host 0.0.0.0 --port ${FLASK_PORT:-5000}" ]