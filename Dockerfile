FROM centos:7

ENV GOVERSION=1.10.3
RUN \ 
  cd /usr/local && \  
  yum install -y wget git gcc gdb make && \
  wget https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz && \
  tar -xzvf go${GOVERSION}.linux-amd64.tar.gz && \
  rm -f go${GOVERSION}.linux-amd64.tar.gz

ENV GOROOT=/usr/local/go
ENV GOPATH=/root/go
ENV PATH=$PATH:/usr/local/go/bin:/root/go/bin

RUN go get -u github.com/derekparker/delve/cmd/dlv

WORKDIR /root/go
