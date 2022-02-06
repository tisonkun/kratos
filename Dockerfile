FROM golang:1.16

WORKDIR /workspace

EXPOSE 8080:8080

RUN apt update && apt -y install protobuf-compiler
RUN go install github.com/go-kratos/kratos/cmd/kratos/v2@latest && kratos upgrade
