FROM centos:7

RUN yum -y install openssh-server

RUN yum install -y passwd

RUN yum install -y initscripts

RUN useradd jenkins && \
     echo 'amit'  | passwd jenkins  --stdin && \
     mkdir  /home/jenkins/.ssh && \
     chmod 700 /home/jenkins/.ssh

COPY remote-key.pub  /home/jenkins/.ssh/authorized-keys   

RUN chown jenkins:jenkins   -R /home/jenkins && \
    chmod 600 /home/jenkins/.ssh/authorized_keys

RUN yum -y install mysql

RUN curl -O https://bootstrap.pypa.io/get-pip.py  &&  \
    python get-pip.py && \
    pip install awscli --upgrade

RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D

