# 
# Node.js 0.10.26 Dockerfile
#
# git@github.com:nextgm/docker-nodejs.git
#

# Pull base image
From ubuntu:14.04

# Update ubuntu
RUN apt-get update

# Install node.js
RUN apt-get install wget -y
COPY install-node.sh /tmp/install-node.sh
RUN chmod u+x /tmp/install-node.sh
RUN /tmp/install-node.sh
 
# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
  
