From tomcat:8.0-jre8
MAINTAINER "wushc"
RUN  wget -c http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-i586.tar.gz?AuthParam=1502415626_68a0fda28012f91bee053e3d0e760a76 && \
     cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
     sed -i '107 aJAVA_OPTS="$JAVA_OPTS -server -Djava.awt.headless=true -Duser.timezone=GMT+08 -Dfile.encoding=UTF-8 -Xms512m -Xmx2048m -XX:PermSize=256M -XX:MaxPermSize=1024M"' /usr/local/tomcat/bin/catalina.sh && \
     tar zxf /jdk-8u144-linux-x64.tar.gz && rm -rf jdk-8u144-linux-x64.tar.gz && export PATH=/jdk1.8.0_144/bin:$PATH
