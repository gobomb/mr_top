#!/bin/sh

export DATA_PATH=/root/input
export OUTPUT_PATH=/root/output
export HADOOP_PREFIX=/usr/local/hadoop

curl -o ${DATA_PATH}/data  ${DATA_PRODUCE}/output.txt
${HADOOP_PREFIX}/bin/hadoop fs -mkdir -p /kaola/order/
${HADOOP_PREFIX}/bin/hadoop fs -moveFromLocal ${DATA_PATH}/data /kaola/order/input
