FROM python:3-bookworm

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  rsync \
  vim \
  util-linux \
  parted \
  e2fsprogs \
  xfsprogs \
  dosfstools \
  btrfs-progs && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*


RUN useradd hl -u 10001 --create-home --user-group
USER 10001
WORKDIR /home/hl/apps
ENV PATH="/home/hl/.local/bin:${PATH}"

COPY --chown=hl requirements.txt .
RUN pip3 install --user -r requirements.txt

COPY --chown=hl apps ./


