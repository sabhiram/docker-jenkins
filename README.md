docker-jenkins
==============
Jenkins dockerfile for use as a docker container. See the [Jenkins][1], and [Docker][2] documentation pages for more information.

Usage:
------

**Build the image**

    docker build -rm -t <yourname>/jenkins git://github.com/sabhiram/docker-jenkins.git

**Run it, and capture the container's ID**

    JENKINS_CONTAINER=$(docker run -d -p 8080:8080 <yourname>/jenkins)

**Attach to it if you want**

    docker attach $JENKINS_CONTAINER

Modifications:
--------------

To change the port jenkins is listening on, you can pass the --httpPort param to the CMD which dispatches jenkins on the container. For a more detailed list of jenkins command line params, [see this link][3].



  [1]: http://jenkins-ci.org/
  [2]: http://www.docker.io/
  [3]: https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
