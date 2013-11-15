docker-jenkins
==============
Jenkins dockerfile for use as a docker container. See http://www.docker.io/ for more info!


Usage:
======

# Build the image...
docker build -rm -t <yourname>/jenkins git://github.com/Sinist3rDext3r/docker-jenkins.git

# Run it and capture its ID
JENKINS_CONTAINER=$(docker run -d -p 8080:8080 <yourname>/jenkins)

# Attach to it if you want...
docker attach $JENKINS_CONTAINER


Modifications:
==============

To change the port jenkins is listening on, you can pass the --httpPort param to the CMD which dispatches jenkins on the container. For a more detailed list of jenkins command line params, see: https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
