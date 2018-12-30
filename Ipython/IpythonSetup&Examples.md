---
title: Settin up Ipython on Yarn + examples
---

# TUTORIAL CONDITIONS

+ Spark 2.4.0 built for Hadoop 2.7.3
+ Hadoop 2.7.7
+ Spark and Hadoop in pseudo distributed mode installed manually without any cluster
+ 4.15.0-43-generic
+ as hduser2

# TUTORIAL SETUP

+ First my .profile
~~~
export SPARK_HOME=/opt/spark
export HADOOP_HOME=/opt/hadoop2.7
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$SPARK_HOME/bin:$PATH
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native
export HADOOP_CONF_DIR=/opt/hadoop2.7/etc/hadoop
export HDFS_NAMENODE_USER=hduser2
export HDFS_DATANODE_USER=hduser2
export HDFS_SECONDARYNAMENODE_USER=hduser2
#export SPARK_HOME=/opt/spark
#export SPARK_CONF_DIR=/opt/spark/conf
#export SPARK_MASTER_HOST=localhost
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export P
export PYSPARK_DRIVER_PYTHON=ipython3
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

~~~


1. [Set up hadoop, loads of tutorials. One of them is this](https://www.edureka.co/blog/install-hadoop-single-node-hadoop-cluster)
2. [Setting up Spark on Yarn](https://www.linode.com/docs/databases/hadoop/install-configure-run-spark-on-top-of-hadoop-yarn-cluster/)
3. [After that follow this to setup Ipython](https://blog.sicara.com/get-started-pyspark-jupyter-guide-tutorial-ae2fe84f594f)
    + I did this without findspark

## SETTING UP IPYTHON
~~~
Exception: Python in worker has different version 2.7 than that in driver 3.6, PySpark cannot run with different minor versions.Please check environment variables PYSPARK_PYTHON and PYSPARK_DRIVER_PYTHON are correctly set.
~~~

+ Solution. Add this to ~/.profile -> logout -> login "sudo su - hduser2"
~~~
export PYSPARK_PYTHON='/usr/bin/python3'
~~~
