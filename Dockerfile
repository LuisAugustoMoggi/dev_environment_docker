FROM consol/ubuntu-xfce-vnc

# DOWNLOAD JDK
ADD https://download.java.net/java/GA/jdk9/9.0.4/binaries/openjdk-9.0.4_linux-x64_bin.tar.gz /opt/javas/jdk9.tar.gz
ADD https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz /opt/javas/jdk10.tar.gz
ADD https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz /opt/javas/jdk11.tar.gz
ADD https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz /opt/javas/jdk12.tar.gz

# DOWNLOAD MAVEN
ADD http://ftp.unicamp.br/pub/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz /opt/maven.tar.gz

# DOWNLOAD INTELLIJ COM 
ADD https://download.jetbrains.com/idea/ideaIC-2019.2.2.tar.gz /opt/intellij.tar.gz

# EXTRACT
tar -zxvf /opt/javas/jdk9.tar.gz /opt/javas
tar -zxvf /opt/javas/jdk10.tar.gz /opt/javas
tar -zxvf /opt/javas/jdk11.tar.gz /opt/javas
tar -zxvf /opt/javas/jdk12.tar.gz /opt/javas

tar -zxvf /opt/maven.tar.gz /opt/maven

tar -zxvf /opt/intellij.tar.gz /opt/intellij
