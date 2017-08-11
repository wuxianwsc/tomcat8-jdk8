From tomcat:8.0-jre8
MAINTAINER "wushc"
RUN  cd / && wget -c 47.91.154.21/package/jdk-8u144-linux-i586.tar.gz && \
     cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
     sed -i '107 aJAVA_OPTS="$JAVA_OPTS -server -Djava.awt.headless=true -Duser.timezone=GMT+08 -Dfile.encoding=UTF-8 -Xms512m -Xmx2048m -XX:PermSize=256M -XX:MaxPermSize=1024M"' /usr/local/tomcat/bin/catalina.sh && \
     tar zxf /jdk-8u144-linux-i586.tar.gz && rm -rf jdk-8u144-linux-i586.tar.gz && \
     echo "export JAVA_HOME=/jdk1.8.0_144" >> /etc/profile && \
     echo "export JRE_HOME=${JAVA_HOME}/jre" >> /etc/profile && \
     echo "export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib" >> /etc/profile && \
     echo "export PATH=${JAVA_HOME}/bin:$PATH" >> /etc/profile && \
     source /etc/profile
