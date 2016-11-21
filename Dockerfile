FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath

RUN go get -u qpm.io/qpm
RUN go get github.com/toukii/wrdGM

EXPOSE 4000:80

CMD ["/gopath/bin/wrdGM"]