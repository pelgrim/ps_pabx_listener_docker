FROM phusion/baseimage:0.9.19

MAINTAINER lucas@vieira.io

RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && \curl -sSL https://get.rvm.io | bash -s stable --ruby=2.3

RUN /bin/bash -l -c "gem install ps_pabx_listener"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/bin/bash", "-c", "-l"]
