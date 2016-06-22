FROM ubuntu:trusty
MAINTAINER Aliaksei Kiryanau <aliaksei.kiryanau1@gmail.com>

# Prevent dpkg errors
ENV TERM=xterm-256color

# Set mirrors to NZ
RUN sed -i "s/http:\/\/archive./http:\/\/nz.archive./g" /etc/apt/sources.list

# Install Python runtime
RUN apt-get update && \
	apt-get install -y \
	-o APT::Install-Recommended=false -o APT::Install-Suggests=false \
	python python-virtualenv