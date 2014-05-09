FROM blalor/centos:latest
MAINTAINER Brian Lalor <blalor@bravo5.org>

RUN yum -y groupinstall "Development tools"
RUN yum -y install \
    ruby-devel \
    rubygems-devel \
    python-devel \
    python-setuptools \
    glibc-static \
    createrepo \
    s3cmd \
    rpmdevtools \
    yum-utils

RUN curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python

RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install fpm --version 1.1.0
