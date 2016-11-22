FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/src/github.com/toukii/wrdGM

RUN go get github.com/toukii/wrdGM

RUN git clone --depth=1 https://github.com/Cutehacks/qpm.git && cd qpm && git submodule init && git submodule update

EXPOSE 4000:80

CMD ["/gopath/bin/wrdGM"]