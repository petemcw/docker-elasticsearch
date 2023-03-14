# this image re-bundles the Docker image from the upstream provider, Elastic.
FROM docker.elastic.co/elasticsearch/elasticsearch:8.4.3@sha256:739ec9d428869f16e9e02247d5082849ebb4302c87e0abf9f70971cbb40c3bab

# environment
LABEL maintainer="petemcw@petemcw.dev"

# packages & configure
RUN \
    echo "**** configure plug-ins ****" && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
