FROM golang:1.16-alpine

WORKDIR /workspace

EXPOSE 8080:8080

RUN apk add --update protobuf-dev
RUN GOPROXY=https://goproxy.io,direct go install github.com/go-kratos/kratos/cmd/kratos/v2@latest && kratos upgrade
