FROM ubuntu:latest

RUN mkdir -p /var/run/sshd

RUN apt update && \
    apt install -y openjdk-8-jdk && \
    apt install -y openssh-server

RUN useradd -rm -d /home/ramses2099 -s /bin/bash ramses2099 && \
    echo ramses2099:password123 | chpasswd

RUN mkdir /home/ramses2099/.ssh && \
    chmod 700 /home/ramses2099/.ssh

COPY id_rsa.pub /home/ramses2099/.ssh/authorized_keys

RUN chown ramses2099:ramses2099 -R /home/ramses2099/.ssh && \
    chmod 600 /home/ramses2099/.ssh/authorized_keys

CMD [ "/usr/sbin/sshd", "-D" ]