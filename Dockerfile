FROM postgres:10

MAINTAINER Cualbondi

ENV POSTGIS_VERSION=2.4

# Update repositories & Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-10-postgis-${POSTGIS_VERSION} \
        postgresql-10-postgis-scripts \
    && rm -rf /var/lib/apt/lists/*
