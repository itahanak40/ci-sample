FROM golang:1.9

WORKDIR /usr/local/go/src

RUN go vet main.go

