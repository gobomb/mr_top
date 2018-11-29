#!/bin/sh

export DATA_PATH=/root/input
export OUTPUT_PATH=/root/output
export HADOOP_PREFIX=/usr/local/hadoop

pushd ${DATA_PATH}
curl -O ${DATA_PRODUCE}/${FILE}
${HADOOP_PREFIX}/bin/hadoop fs -mkdir -p /kaola/order/
${HADOOP_PREFIX}/bin/hadoop fs -moveFromLocal . /kaola/order/input
popd
