FROM gcr.io/spark-operator/spark:v2.4.4

RUN apk add --no-cache git maven && \
    mkdir -p /usr/local/home/hibench
    
WORKDIR /usr/local/home/hibench

RUN git clone https://github.com/Intel-bigdata/HiBench.git && \
    ls ./ && \
    cd /usr/local/home/hibench/Hibench && \
    mvn -Psparkbench -Dspark=2.4 -Dscala=2.11 clean package
    
