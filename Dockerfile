FROM ubuntu:18.04

MAINTAINER Martin <martin@hellstrom.it>

RUN apt update &&\
    apt install -y dos2unix p7zip-full cpio gzip genisoimage whois pwgen wget fakeroot isolinux xorriso git python3-pip &&\
    rm -rf /var/cache/apt/* &&\
    pip3 install pyvmomi &&\
    git clone https://github.com/core-process/linux-unattended-installation.git /root/lui/
ENTRYPOINT ["/bin/dash"]
