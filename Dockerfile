ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION}-alpine

WORKDIR /root

RUN apk add --no-cache --virtual .build-deps \
    gcc libc-dev linux-headers
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py wsgi.py ./

COPY templates ./templates

CMD [ "sh", "-c", "uwsgi --socket 0.0.0.0:5000 --protocol=http -w wsgi:app"]

