FROM opensearchproject/opensearch:1.1.0 as opensearch
RUN /usr/share/opensearch/bin/opensearch-plugin install analysis-kuromoji
RUN /usr/share/opensearch/bin/opensearch-plugin install analysis-icu

FROM docker.elastic.co/beats/filebeat:7.16.3 as filebeat
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
