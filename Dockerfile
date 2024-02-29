FROM ubuntu:20.04
RUN apt update
RUN apt install -y build-essential
RUN apt install -y linux-headers-$(uname -r)
RUN apt-get install manpages-dev
WORKDIR /home/usr
