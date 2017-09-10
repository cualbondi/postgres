FROM postgres:9.6

MAINTAINER Cualbondi

ENV POSTGIS_VERSION=2.3

# Update repositories & Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-9.6-postgis-${POSTGIS_VERSION} \
        postgresql-9.6-postgis-scripts \
    && rm -rf /var/lib/apt/lists/*