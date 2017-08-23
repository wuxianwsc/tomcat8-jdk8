From openjdk:8
MAINTAINER "wushc"

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

COPY tomcat.tar.gz /
COPY start.sh /start.sh
WORKDIR /
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
     tar xf tomcat.tar.gz && rm -rf tomcat.tar.gz && \
	 mv tomcat /usr/local && \
	 chmod +x /start.sh
	 
WORKDIR /usr/local/tomcat
CMD ["/start.sh"]
