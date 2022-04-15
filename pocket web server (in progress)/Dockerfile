FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install \
    ca-certificates \
    vim \
    curl \
    gnupg \
    lsb-release -y

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update 
RUN apt-get install \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose -y

RUN systemctl enable docker
RUN systemctl enable docker
RUN chmod 666 /run/docker.sock

RUN mkdir /home/work
WORKDIR /home/work
COPY * /home/work
RUN cd /home/work

RUN docker-compose up -d

EXPOSE 8080



