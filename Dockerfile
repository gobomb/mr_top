FROM registry.local/hadoop-base:latest
RUN mkdir /root/output &&mkdir /root/code &&mkdir /root/input
COPY src /root/code
COPY run.sh /root/code
COPY getdata.sh /root/code
COPY data-server /
COPY bootstrap.sh /etc/bootstrap.sh
EXPOSE 8102
