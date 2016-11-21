FROM daocloud/ci-golang:1.7

ENV GOPATH /gopath

WORKDIR /gopath

RUN go install qpm.io/qpm

EXPOSE 80:80

CMD ["/gopath/bin/qpm"]