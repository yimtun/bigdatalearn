export JAVA_HOME=/usr/local/jdk1.8.0_144
export HADOOP_HOME=/usr/local/hadoop-2.7.4
export HADOOP_CONF_DIR=/usr/local/hadoop-2.7.4/etc/hadoop
#export SPARK_WORKER_MEMORY=500m
export SPARK_WORKER_MEMORY=1024m
export SPARK_WORKER_CORES=1
export SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=ZOOKEEPER -Dspark.deploy.zookeeper.url=node-196:2181,node-197:2181,node-198:2181 -Dspark.deploy.zookeeper.dir=/spark"
