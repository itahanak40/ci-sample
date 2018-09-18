FROM golang:1.9

WORKDIR /go/src/ci-sample

RUN go vet ci-sample

