---
title: "README"
---


# RUNNING examples

+ sparkSubmit.sh (logs std and stderr? into sparkRunLogs) submits spark jar with specified parameters
~~~
./sparkSubmit.sh -ec 1 -ne 1 -em 512m -dm 1024m -emo 1536m -dmo 2048m  2>> sparkRunLogs 1>> sparkRunLogs
~~~
+ sparkScalaShell.sh starts scala shell with specified parameters
~~~
./sparkScalaShell.sh -dm 20g -em 3g -ne 1 -ec 1 -ydmo=512m -yemo=512m
~~~
+ hadoop.sh
~~~
hadoop.sh start
hadoop.sh stop
~~~

# SPECIFICATIONS

+ for sparkSubmit, sparkScalaShell there are some predefined statically written variables that you cannot change via cli. This has been made to ease testing as multiple runs of same application are usually done.
