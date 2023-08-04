FROM centos:7

COPY run.sh /tmp
COPY docker_init.sh /tmp
COPY grnoc7.repo /etc/yum.repos.d/grnoc7.repo
COPY grnoc-netsage-deidentifier-2.0.0-1.el7.noarch.rpm /tmp
RUN mkdir /etc/netsage
COPY deidentifier/ /etc/netsage
RUN chmod +x /tmp/*.sh

# for backward compatibility for older versions
RUN mkdir -p /etc/grnoc; ln -s /etc/netsage /etc/grnoc/netsage

RUN yum  -y update 
RUN yum install -y dnf epel-release nfdump wget
RUN dnf install -y /tmp/*.rpm

# these were in the old version of the container, but its not clear to me any are needed here -blt
#RUN yum install -y python3 
#RUN pip3 install --upgrade pip pika 
#RUN pip3 install --upgrade pika 

RUN mkdir /data; chown 777 /data
VOLUME [/var/cache/netsage/]
VOLUME [/etc/netsage/deidentifier/]
VOLUME [/var/lib/netsage/]
VOLUME [/data]
VOLUME [/etc/netsage/]
CMD "/bin/sh" "-c" "/tmp/run.sh"
