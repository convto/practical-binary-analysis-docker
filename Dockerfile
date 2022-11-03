FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  wget \
  file \
  binutils \
  build-essential

WORKDIR /home/binary
RUN wget --no-check-certificate https://practicalbinaryanalysis.com/patch/auto-update.sh \
  && chmod 755 auto-update.sh && ./auto-update.sh

WORKDIR /home
RUN wget https://practicalbinaryanalysis.com/file/pba-code.tar.gz \
  && tar -zxvf pba-code.tar.gz \
  && rm -rf pba-code.tar.gz

CMD ["/bin/bash"]
