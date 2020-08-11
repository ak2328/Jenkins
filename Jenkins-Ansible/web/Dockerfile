FROM remote_host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install nginx-1.12.2 openssl --enablerepo=nginx                  && \
  yum -y install \
  https://repo.ius.io/ius-release-el7.rpm \
  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm        && \
  yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm  && \
  yum-config-manager --enable remi-php73 && \
  yum -y install yum-utils && \
  yum-config-manager --disable remi-php54 && \
  yum-config-manager --enable remi-php73 && \
  yum -y install php php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json php-pdo php-pecl-apcu php-pecl-apcu-devel \
  yum -y install systemd; yum clean all
  # yum -y install                                                             \
  #   php71u-fpm                                                               \
  #   php71u-cli                                                               \
  #   php71u-mysqlnd                                                           \
  #   php71u-soap                                                              \
  #   php71u-xml                                                               \
  #   php71u-zip                                                               \
  #   php71u-json                                                              \
  #   php71u-mcrypt                                                            \
  #   php71u-mbstring                                                          \
  #   php71u-zip                                                               \
  #   php71u-gd                                                                
      #--enablerepo=ius && yum clean all
EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh

