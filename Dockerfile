FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath

RUN go install qpm.io/qpm

EXPOSE 80:80

CMD ["/gopath/bin/qpm"]