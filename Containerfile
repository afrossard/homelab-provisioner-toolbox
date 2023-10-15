FROM python:bookworm

RUN apt-get update && \
    apt-get install --no-install-recommends --yes rsync

COPY requirements.txt .

RUN pip3 install -r requirements.txt

