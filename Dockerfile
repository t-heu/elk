FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.1

RUN mkdir -p /usr/share/elasticsearch/data
RUN chown -R 1000:0 /usr/share/elasticsearch/data
RUN chmod -R g+rwx /usr/share/elasticsearch/data
RUN chgrp -R 0 /usr/share/elasticsearch/data

RUN chmod -R 777 ./esdata