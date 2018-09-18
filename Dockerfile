FROM golang:1.9

WORKDIR /go/src/cisample

COPY /* ./

WORKDIR /go/src

RUN ls /go/src/cisample

#RUN go vet -structtags=false -composites=false cisample
RUN go vet cisample

RUN go get -u github.com/golang/lint/golint \
        && golint -set_exit_status -min_confidence=1.1 ./cisample/...
