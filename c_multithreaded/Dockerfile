FROM debian:stable

RUN apt update -qq
RUN apt install -y -qq build-essential autoconf automake pkg-config libtool m4 autoconf-archive

RUN mkdir -p /data/app/sources/src
RUN mkdir -p /data/app/build

WORKDIR /data/app/sources

COPY configure.ac Makefile.am .
COPY src/c_multithreaded.c src/c_multithreaded.c

RUN autoreconf -i

WORKDIR /data/app/build
RUN ../sources/configure
RUN make V=1 VERBOSE=1

CMD ["./c_multithreaded"]

