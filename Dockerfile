FROM centos
MAINTAINER Gerald Schmidt <gerald1248@gmail.com>

RUN yum update -y  && yum install -y \
  openscap openscap-utils scap-security-guide epel-release
RUN yum install -y jq

ADD oscap-dockerless /usr/local/bin/oscap-dockerless
