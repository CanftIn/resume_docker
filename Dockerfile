FROM ubuntu:latest
MAINTAINER canftin "wwc7033@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install git build-essential -y \
  && git clone https://github.com/billryan/resume.git /resume \
  && apt-get install texlive-xetex -y \
  && cd /resume \
  && make resume.pdf


CMD ["bin/bash"]
