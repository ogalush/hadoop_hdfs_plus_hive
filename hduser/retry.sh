#!/bin/bash


#-- put csvfile
hadoop fs -ls  /data/access.csv
hadoop fs -rm  /data/access.csv
hadoop fs -put access.csv /data

#-- exec hive
hive -f ./getaccess.hql | tee log.txt 

