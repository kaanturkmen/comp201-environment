FROM ubuntu:latest

# Updating apt-get.
RUN apt-get update

# Installing python2.
RUN apt-get install -y --no-install-recommends python

# Installing python3.
RUN apt-get install -y python3-pip python3-dev \
	&& ln -s /usr/bin/python3 python \
	&& pip3 install --upgrade pip

# Installing GCC.
RUN apt-get install -y --no-install-recommends \
	gcc \
	g++ \
	gfortran \
	gcc-multilib

# Installing gdb.
RUN apt-get install -y --no-install-recommends gdb

# Installing vim.
RUN apt-get install -y vim

# Installing git.
RUN apt-get install -y --no-install-recommends git
