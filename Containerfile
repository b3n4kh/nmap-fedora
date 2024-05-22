FROM registry.fedoraproject.org/fedora:latest

RUN dnf group install -y "Development Tools" && dnf install -y git automake python3 python3-build python-setuptools gcc-c++


RUN git clone https://github.com/nmap/nmap

WORKDIR nmap

RUN ./configure && make



