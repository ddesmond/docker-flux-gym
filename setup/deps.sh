#!/bin/bash
echo $PWD

#!/bin/bash

dnf update -y
dnf upgrade --refresh -y

dnf install -y dnf-plugins-core
dnf config-manager --set-enabled crb
dnf install -y epel-release

dnf update -y

dnf install -y \
    nano zip \
    git git-lfs wget curl mlocate --allowerasing

dnf install  -y \
  make gcc patch zlib-devel bzip2 bzip2-devel \
  readline-devel sqlite sqlite-devel openssl-devel \
  tk-devel libffi-devel xz-devel libuuid-devel gdbm-libs libnsl2 \
  mesa-libGL \
  g++


/usr/bin/git lfs install


apt-get update -y
apt-get install -y --no-install-recommends 	\
	ca-certificates curl gnupg \
  netbase sq wget \
  git \
  mercurial openssh-client \
  subversion \
  procps \
  autoconf automake bzip2 default-libmysqlclient-dev \
  dpkg-dev 		file 		g++ 		gcc \
  imagemagick 		libbz2-dev 		libc6-dev \
  libcurl4-openssl-dev 		libdb-dev \
  libevent-dev 		libffi-dev 		libgdbm-dev \
  libglib2.0-dev 		libgmp-dev 		libjpeg-dev \
  libkrb5-dev 		liblzma-dev 		libmagickcore-dev \
  libmagickwand-dev 		libmaxminddb-dev \
  libncurses5-dev 		libncursesw5-dev \
  libpng-dev 		libpq-dev 		libreadline-dev \
  libsqlite3-dev 		libssl-dev \
  libtool 		libwebp-dev 		libxml2-dev \
  libxslt-dev 		libyaml-dev \
  make 		patch 		unzip \
  xz-utils 		zlib1g-dev


apt-get update -y
apt-get install -y --no-install-recommends 	\
	libbluetooth-dev 	\
  tk-dev \
  uuid-dev


