FROM docker.elastic.co/beats/metricbeat:7.3.2
ARG METRICBEAT_FILE=metricbeat.yml
ENV METRICBEAT_FILE=${METRICBEAT_FILE}
COPY ${METRICBEAT_FILE} /usr/share/metricbeat/metricbeat.yml
USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
USER metricbeat
