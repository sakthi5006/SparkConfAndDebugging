
# The java implementation to use. If JAVA_HOME is not found we expect java and jar to be in path
export JAVA_HOME=/usr/jdk64/jdk1.8.0_112

# any additional java opts you want to set. This will apply to both client and server operations
#export FALCON_OPTS=

# any additional java opts that you want to set for client only
#export FALCON_CLIENT_OPTS=

# java heap size we want to set for the client. Default is 1024MB
#export FALCON_CLIENT_HEAP=

# any additional opts you want to set for prisim service.
#export FALCON_PRISM_OPTS=

# java heap size we want to set for the prisim service. Default is 1024MB
#export FALCON_PRISM_HEAP=

# any additional opts you want to set for falcon service.
export FALCON_SERVER_OPTS="-Dfalcon.embeddedmq=True -Dfalcon.emeddedmq.port=61616"

# java heap size we want to set for the falcon server. Default is 1024MB
#export FALCON_SERVER_HEAP=

# What is is considered as falcon home dir. Default is the base location of the installed software
#export FALCON_HOME_DIR=

# Where log files are stored. Defatult is logs directory under the base install location
export FALCON_LOG_DIR=/var/log/falcon

# Where pid files are stored. Defatult is logs directory under the base install location
export FALCON_PID_DIR=/var/run/falcon

# where the falcon active mq data is stored. Defatult is logs/data directory under the base install location
export FALCON_DATA_DIR=/hadoop/falcon/embeddedmq/data

# Where do you want to expand the war file. By Default it is in /server/webapp dir under the base install dir.
#export FALCON_EXPANDED_WEBAPP_DIR=

