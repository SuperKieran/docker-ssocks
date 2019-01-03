FROM ubuntu:16.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean
RUN apt-get update && apt-get install -y -q build-essential && rm -rf /var/lib/apt/lists/*

ADD ssocks-0.0.14.tar.gz /ssockssrc
WORKDIR /ssockssrc/ssocks-0.0.14
RUN ./configure && make && make install && rm -rf /ssockssrc
WORKDIR /

CMD ["rssocks"]
