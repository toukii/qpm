FROM golang:latest

ENV GOPATH /gopath

WORKDIR /gopath/app

RUN git clone --depth 1 git://github.com/toukii/bookmark.git . && go get github.com/toukii/bookmark && mv $GOPATH/bin/bookmark .


RUN git clone --depth=1 https://github.com/Cutehacks/qpm.git && cd qpm && git submodule init && git submodule update

EXPOSE 80

CMD ["/gopath/app/bookmark"]