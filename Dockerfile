# this image re-bundles the Docker image from the upstream provider, Elastic.
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.10@sha256:bc7ba1dc5067c5b3907b82c667a374cc987cd813501e1378ec74ccd1c577f787
# Supported Architectures: amd64 arm64v8

# environment
LABEL maintainer="petemcw@petemcw.dev"

# packages & configure
RUN \
    echo "**** configure plug-ins ****" && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
