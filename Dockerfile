FROM consol/ubuntu-xfce-vnc

USER 0

# PREPARE
RUN apt-get update; apt-get install xz-utils
RUN mkdir /opt/install; \
    mkdir /opt/install/javas; \
    mkdir /opt/install/maven; \
    mkdir /opt/install/intellij; \
    mkdir /opt/install/node; \
    mkdir /opt/install/vscode;

# DOWNLOAD JDK
ADD https://download.java.net/java/GA/jdk9/9.0.4/binaries/openjdk-9.0.4_linux-x64_bin.tar.gz /opt/install/javas/jdk9.tar.gz
ADD https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz /opt/install/javas/jdk10.tar.gz
ADD https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz /opt/install/javas/jdk11.tar.gz
ADD https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz /opt/install/javas/jdk12.tar.gz

# DOWNLOAD MAVEN
ADD http://ftp.unicamp.br/pub/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz /opt/install/maven.tar.gz

# DOWNLOAD INTELLIJ COM 
ADD https://download.jetbrains.com/idea/ideaIC-2019.2.2.tar.gz /opt/install/intellij.tar.gz

# DOWNLOAD NODE
ADD https://nodejs.org/dist/v12.10.0/node-v12.10.0-linux-x64.tar.xz /opt/install/node.tar.xz

#DOWNLOAD VS_CODE
ADD https://go.microsoft.com/fwlink/?LinkID=620884 /opt/install/vscode.tar.gz

# EXTRACT
RUN tar -zxvf /opt/install/javas/jdk9.tar.gz -C /opt/install/javas
RUN tar -zxvf /opt/install/javas/jdk10.tar.gz -C /opt/install/javas
RUN tar -zxvf /opt/install/javas/jdk11.tar.gz -C /opt/install/javas
RUN tar -zxvf /opt/install/javas/jdk12.tar.gz -C /opt/install/javas

RUN tar -zxvf /opt/install/maven.tar.gz -C /opt/install/maven

RUN tar -zxvf /opt/install/intellij.tar.gz -C /opt/install/intellij

RUN tar -zxvf /opt/install/node.tar.xz -C /opt/install/node

RUN tar -zxvf /opt/install/vscode.tar.gz -C /opt/install/vscode

#CONFIG
ENV JAVA_HOME=/opt/jdk
ENV MAVEN_HOME=/opt/maven
ENV NODE_HOME=/opt/node
ENV VS_CODE_HOME=/opt/vscode
ENV INTELLIJ_HOME=/opt/intellij
