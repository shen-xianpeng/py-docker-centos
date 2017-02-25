FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
RUN pip install --upgrade pip
ADD . /src

RUN cd /src; pip install -r requirements.txt

EXPOSE 8080


WORKDIR /src

CMD ["python", "index.py"]

