# Dockerfile for Jenkins CI
# http://jenkins-ci.org/

FROM ubuntu
MAINTAINER Shaba Abhiram <shabarivas@gmail.com>

# Common header for all Dockerfiles
RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install OpenJDK
RUN apt-get install -q openjdk-7-jre-headless

# Pull the latest Jenkins .war file from http://mirrors.jenkins-ci.org/war/latest/
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /root/jenkins.war

# Expose port 8080 which is what jenkins will listen on for HTTP
EXPOSE 8080

# Run the command to start the jenkins server
CMD ["java", "-jar", "/root/jenkins.war"]