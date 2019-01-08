
export JAVA_HOME=/usr/jdk64/jdk1.8.0_112
export ZOOKEEPER_HOME=/usr/hdp/current/zookeeper-client
export ZOO_LOG_DIR=/hdplogs/logs/zookeeper
export ZOOPIDFILE=/var/run/zookeeper/zookeeper_server.pid
export SERVER_JVMFLAGS=-Xmx1024m
export JAVA=$JAVA_HOME/bin/java
export CLASSPATH=$CLASSPATH:/usr/share/zookeeper/*


export SERVER_JVMFLAGS="$SERVER_JVMFLAGS -Djava.security.auth.login.config=/usr/hdp/current/zookeeper-client/conf/zookeeper_jaas.conf
-Dzookeeper.DigestAuthenticationProvider.superDigest=super:UdxDQl4f9v5oITwcAsO9bmWgHSI="
export CLIENT_JVMFLAGS="$CLIENT_JVMFLAGS -Djava.security.auth.login.config=/usr/hdp/current/zookeeper-client/conf/zookeeper_client_jaas.conf"
