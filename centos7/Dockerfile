FROM centos

RUN yum -y install openssh-server

RUN useradd remote_user && \
     echo 'amit'  | passwd remote_server  --stdin && \
     mkdir  /home/remote_user/.ssh && \
     chmod 700 /home/remote_user/.ssh

COPY remote=key.pub  /home/remote-user/.ssh/authorized-keys   

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D

