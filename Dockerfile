FROM golang:1.9

#WORKDIR /go/src/ci-sample

#COPY /* ./

#WORKDIR /go/src
WORKDIR /

#RUN go vet ci-sample
RUN go vet ./workspace/main.go

#RUN go get -u github.com/golang/lint/golint \
#        && golint -set_exit_status ./ci-sample/...
RUN go get -u github.com/golang/lint/golint \
        && golint -set_exit_status ./workspace/...


# RUN go tool vet controllers
# RUN go tool vet functions
# RUN go tool vet models
# RUN go tool vet pubsub
# RUN go tool vet scripts
# RUN go tool vet services
# RUN go tool vet tasks
# RUN go tool vet utils