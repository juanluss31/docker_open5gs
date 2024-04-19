FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

# Install updates and dependencies
RUN apt-get update && \
	apt-get -y install wget jq

RUN wget https://downloads.mongodb.com/compass/mongodb-mongosh_2.1.4_amd64.deb && \
    sudo dpkg -i mongodb-mongosh_2.1.4_amd64.deb && \
    rm mongodb-mongosh_2.1.4_amd64.deb

COPY firstrun_init.sh /
CMD /firstrun_init.sh
