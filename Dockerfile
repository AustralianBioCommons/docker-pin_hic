FROM ubuntu

RUN apt-get update
RUN apt-get install -y build-essential zlib1g-dev graphviz 

COPY . /build
WORKDIR /build/pin_hic/src
RUN make
RUN cp ../bin/* /usr/local/bin

WORKDIR /build/satool/src
RUN make
RUN cp ../bin/* /usr/local/bin

