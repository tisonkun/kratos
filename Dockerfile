FROM golang:1.16

RUN apt update && apt -y install protobuf-compiler

WORKDIR /workspace
COPY . /workspace/
RUN make install
