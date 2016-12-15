# regular DEBIAN TESTING w/ JAVA

# let's use a debian as a base
FROM tianon/debian-roll:testing

# see http://binfalse.de/contact/ if you want to contact me
MAINTAINER martin scharm

# install java and texlive as a dependency
RUN apt-get -y update && \
    apt-get install -y \
            openjdk-8-jre \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

