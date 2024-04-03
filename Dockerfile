FROM ubuntu:20.04

LABEL maintainer="AIRR Knowledge"

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y --fix-missing \
    git \
    python3 \
    python3-pip \
    python3-sphinx \
    python3-scipy \
    libyaml-dev \
    r-base \
    r-base-dev \
    wget \
    curl \
    jq \
    bsdmainutils \
    nano

RUN pip3 install \
    pandas \
    biopython \
    matplotlib \
    airr==v1.4.1 \
    tapipy

# Tapis V2 CLI
RUN cd / && git clone https://github.com/TACC-Cloud/tapis-cli.git
RUN cd /tapis-cli && pip3 install --upgrade .

# Copy source
RUN mkdir /ak-tools
COPY . /ak-tools

# old-style Agave V2 CLI
ENV PATH /ak-tools/vdjserver-agave/agave-cli/bin:$PATH
