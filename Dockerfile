FROM golang:1.9

WORKDIR /go/src/ci-sample

COPY /* ./

WORKDIR /go/src

RUN go vet ci-sample
