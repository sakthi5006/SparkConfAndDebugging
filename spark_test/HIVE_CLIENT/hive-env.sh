
 if [ "$SERVICE" = "cli" ]; then
   if [ -z "$DEBUG" ]; then
     export HADOOP_OPTS="$HADOOP_OPTS -XX:NewRatio=12 -XX:MaxHeapFreeRatio=40 -XX:MinHeapFreeRatio=15 -XX:+UseNUMA -XX:+UseParallelGC -XX:-UseGCOverheadLimit"
   else
     export HADOOP_OPTS="$HADOOP_OPTS -XX:NewRatio=12 -XX:MaxHeapFreeRatio=40 -XX:MinHeapFreeRatio=15 -XX:-UseGCOverheadLimit"
   fi
else
 if [ "$SERVICE" = "hiveserver2" ]; then
   if [ -z "$DEBUG" ]; then
     export HADOOP_OPTS="$HADOOP_OPTS -XX:NewRatio=12 -Xmx12288m -Xms10m -XX:MaxHeapFreeRatio=40 -XX:MinHeapFreeRatio=15 -XX:+UseParNewGC -XX:-UseGCOverheadLimit"
   else
     export HADOOP_OPTS="$HADOOP_OPTS -XX:NewRatio=12 -Xmx12288m  -Xms10m -XX:MaxHeapFreeRatio=40 -XX:MinHeapFreeRatio=15 -XX:-UseGCOverheadLimit"
   fi
 fi
 fi

# The heap size of the jvm stared by hive shell script can be controlled via:

if [ "$SERVICE" = "metastore" ]; then
  export HADOOP_HEAPSIZE=16079 # Setting for HiveMetastore
else
  export HADOOP_HEAPSIZE=1024 # Setting for HiveServer2 and Client
fi

export HADOOP_CLIENT_OPTS="$HADOOP_CLIENT_OPTS  -Xmx${HADOOP_HEAPSIZE}m"

# Larger heap size may be required when running queries over large number of files or partitions.
# By default hive shell scripts use a heap size of 256 (MB).  Larger heap size would also be
# appropriate for hive server (hwi etc).


# Set HADOOP_HOME to point to a specific hadoop install directory
HADOOP_HOME=${HADOOP_HOME:-/usr/hdp/current/hadoop-client}

# Hive Configuration Directory can be controlled by:
export HIVE_CONF_DIR=/usr/hdp/current/hive-client/conf

# Folder containing extra libraries required for hive compilation/execution can be controlled by:
#if [ "${HIVE_AUX_JARS_PATH}" != "" ]; then
#  if [ -f "${HIVE_AUX_JARS_PATH}" ]; then
#    export HIVE_AUX_JARS_PATH=${HIVE_AUX_JARS_PATH}
#  elif [ -d "/usr/hdp/current/hive-webhcat/share/hcatalog" ]; then
#    export HIVE_AUX_JARS_PATH=/usr/hdp/current/auxlibs/hive-contrib.jar:/usr/hdp/current/auxlibs/json-serde-1.3.8-SNAPSHOT-jar-with-dependencies.jar:/usr/hdp/current/auxlibs/hive-hilo-sequence-0.0.1.jar:/usr/hdp/current/hive-webhcat/share/hcatalog/hive-hcatalog-core.jar
#  fi
#elif [ -d "/usr/hdp/current/hive-webhcat/share/hcatalog" ]; then
# export HIVE_AUX_JARS_PATH=/usr/hdp/current/auxlibs/hive-contrib.jar:/usr/hdp/current/auxlibs/json-serde-1.3.8-SNAPSHOT-jar-with-dependencies.jar:/usr/hdp/current/auxlibs/hive-hilo-sequence-0.0.1.jar:/usr/hdp/current/hive-webhcat/share/hcatalog/hive-hcatalog-core.jar
#fi

#if [ -d "/usr/hdp/current/atlas-server/hook/hive" ]; then
#   export HIVE_AUX_JARS_PATH=/usr/hdp/current/atlas-server/hook/hive:${HIVE_AUX_JARS_PATH}
#fi

export METASTORE_PORT=9083


export HIVE_HOME=${HIVE_HOME:-/usr/hdp/current/hive-client}
export HADOOP_CLIENT_OPTS="$HADOOP_CLIENT_OPTS"