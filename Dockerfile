FROM ysaotome/ubuntu:14.04

MAINTAINER Yuichi Saotome <y@sotm.jp>

# Install mercurial
RUN apt-get update && apt-get install -y mercurial && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install go tarball
ENV GOLANG_VERSION 1.4.2
RUN wget -qO- http://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz | tar -C /usr/local -xzf -

# Set user
ENV HOME /root
ENV GOPATH ${HOME}/go
ENV PATH ${PATH}:${GOPATH}/bin:/usr/local/go/bin
RUN touch ${HOME}/.zshrc
WORKDIR ${HOME}

# Install Hugo
RUN go get -v github.com/spf13/hugo
EXPOSE 1313

VOLUME ${HOME}/hugo
WORKDIR ${HOME}/hugo


