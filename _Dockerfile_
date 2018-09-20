FROM golang:1.9

ARG PJ_DIR_NAME=cisample

WORKDIR /go/src/$PJ_DIR_NAME

RUN echo $PJ_DIR_NAME

COPY /* ./

WORKDIR /go/src

# [ go vet ]
# OK Pattern
RUN go vet -structtags=false -composites=false $PJ_DIR_NAME

# NG Pattern
#RUN go vet cisample

# [ golint ]
RUN go get -u github.com/golang/lint/golint \
        && golint -set_exit_status -min_confidence=1.1 ./$PJ_DIR_NAME/...

