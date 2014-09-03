FROM centos:centos7
MAINTAINER Brian Lalor <blalor@bravo5.org>

RUN yum -y groupinstall "Development tools"
RUN yum -y localinstall http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-1.noarch.rpm
RUN yum -y install \
    ruby-devel \
    rubygems-devel \
    python-devel \
    python-setuptools \
    python-pip \
    glibc-static \
    createrepo \
    s3cmd \
    rpmdevtools \
    yum-utils

RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install fpm --version 1.1.0
