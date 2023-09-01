FROM ubuntu:22.04

WORKDIR /app/

RUN apt-get -qq update --fix-missing

RUN apt-get clean && apt-get update && apt-get install -y locales

# Setup the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# Turn off Interactive mode for the Installs
ENV DEBIAN_FRONTEND noninteractive

# Install Dev tools
RUN apt-get install -y git
RUN apt-get install -y g++
RUN apt-get install -y make

# Install FLEX and Bison
RUN apt-get install -y flex
RUN apt-get install -y bison
