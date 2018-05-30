#
# simple ubuntu dockerfile example
# 
FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade
ENV HOME /root
