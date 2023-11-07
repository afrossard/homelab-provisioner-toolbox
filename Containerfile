FROM python:3-bookworm

RUN apt-get update && \
  apt-get install --no-install-recommends --yes rsync vim

RUN useradd hl -u 10001 --create-home --user-group
USER 10001
WORKDIR /home/hl/apps
ENV PATH="/home/hl/.local/bin:${PATH}"

COPY --chown=hl requirements.txt .
RUN pip3 install --user -r requirements.txt

COPY --chown=hl apps ./


