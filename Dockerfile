From openjdk:8
MAINTAINER "wushc"

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

COPY tomcat.tar.gz /
COPY start.sh /start.sh
WORKDIR /
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
     tar xf apache-tomcat-8.5.20.tar.gz && rm -rf apache-tomcat-8.5.20.tar.gz && \
	 mv tomcat /usr/local && \
	 chmod +x /start.sh
	 
WORKDIR /usr/local/tomcat
CMD ["/start.sh"]
