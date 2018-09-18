FROM golang:1.9

WORKDIR /go/src/ci-sample

COPY /main.go ./

WORKDIR /go/src

RUN go vet ci-sample
