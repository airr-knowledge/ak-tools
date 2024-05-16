FROM ubuntu:20.04

LABEL maintainer="AIRR Knowledge"

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y --fix-missing \
    git \
    python3 \
    python3-pip \
    python3-sphinx \
    python3-scipy \
    python3-venv \
    libyaml-dev \
    r-base \
    r-base-dev \
    wget \
    curl \
    jq \
    bsdmainutils \
    nano \
    rsync

RUN pip3 install \
    pandas \
    biopython \
    matplotlib \
    airr \
    tapipy

RUN pip3 install --upgrade requests

# Copy source
RUN mkdir /vdjserver-tapis
COPY ./vdjserver-tapis /vdjserver-tapis
ENV PATH /vdjserver-tapis/bin:$PATH

# Tapis V3 CLI
#RUN cd / && git clone https://github.com/tapis-project/tapisv3-cli.git
#RUN cd /tapisv3-cli && ./install

ENTRYPOINT ["/vdjserver-tapis/bin/entrypoint.sh"]
