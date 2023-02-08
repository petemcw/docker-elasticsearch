# this image re-bundles the Docker image from the upstream provider, Elastic.
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.9@sha256:59b37f77bd8b015d5b60f75bebb22d06028f7f15036f9d3559d2b7c16ece74db

# environment
LABEL maintainer="petemcw@petemcw.dev"

# packages & configure
RUN \
    echo "**** configure plug-ins ****" && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
