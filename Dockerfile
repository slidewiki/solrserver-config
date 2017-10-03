FROM solr:7.0.0
MAINTAINER Paul Baptista <pbaptist@uni-bonn.de>


# ----------------- #
#   Configuration   #
# ----------------- #

USER root
ADD ./solr-config/ /opt/solr/server/solr
RUN mkdir /solr-data && chown -R 8983:8983 /opt/solr/server/solr && chown -R 8983:8983 /solr-data

VOLUME ["/solr-data"]

# ----------------- #
#       Start       #
# ----------------- #

USER solr
EXPOSE 8983

