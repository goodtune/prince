FROM goodtune/pdftk

MAINTAINER Gary Reynolds <gary@touch.asn.au>

# Add the EPEL yum repository, required for cabextract
RUN rpm -i http://mirror.optus.net/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum install -y curl cabextract fontconfig giflib xorg-x11-font-utils; yum clean all
RUN rpm -i http://www.princexml.com/download/prince-9.0-5.centos60.x86_64.rpm
RUN rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
