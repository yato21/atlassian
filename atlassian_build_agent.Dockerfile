FROM ubuntu:24.10
# update apps
RUN sh -c "apt-get update" 
# install docker
RUN sh -c "apt-get install -y docker.io"
RUN sh -c "apt-get install -y docker-compose"
RUN sh -c "apt install -y docker-buildx"
ENV DOCKER_BUILDKIT=1
# install java
RUN sh -c "apt-get install -y wget"
RUN sh -c "wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.12%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.12_7.tar.gz"
RUN sh -c "tar xzfv OpenJDK17U-jdk_x64_linux_hotspot_17.0.12_7.tar.gz"
RUN sh -c "mv jdk-17.0.12+7 /opt/"
ENV JAVA_HOME=/opt/jdk-17.0.12+7
ENV PATH=$PATH:$JAVA_HOME/bin
# install maven
RUN sh -c "wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz"
RUN sh -c "tar xzfv apache-maven-3.9.9-bin.tar.gz"
RUN sh -c "mv apache-maven-3.9.9 /opt/"
ENV PATH=$PATH:/opt/apache-maven-3.9.9/bin
COPY ./ /atlassian-install
ENTRYPOINT ["bash"]