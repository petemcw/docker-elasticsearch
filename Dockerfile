# this image re-bundles the Docker image from the upstream provider, Elastic.
FROM docker.elastic.co/elasticsearch/elasticsearch:8.7.0@sha256:9fe38a4dc00ce101630e70a966aad1a195b56bceb779748e6c399ceeb45cffab
# Supported Architectures: amd64 arm64v8

# environment
LABEL maintainer="petemcw@petemcw.dev"

# packages & configure
RUN \
    echo "**** configure plug-ins ****" && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
