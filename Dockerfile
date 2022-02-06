FROM golang:1.16

RUN apt update && apt -y install protobuf-compiler

WORKDIR /build
COPY . /build/
RUN make install

WORKDIR /workspace
