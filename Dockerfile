FROM centos:7

ADD go1.10.3.linux-amd64.tar.gz /usr/local/
ENV GOROOT=/usr/local/go
ENV GOPATH=/root/go
ENV PATH=$PATH:/usr/local/go/bin:/root/go/bin

RUN yum install -y git gcc gdb make
RUN go get -u github.com/derekparker/delve/cmd/dlv

WORKDIR /root/go
