# Container image that runs your code
ARG RELEASE=snowflake:1.4.1
FROM ghcr.io/dbt-labs/dbt-${RELEASE}

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]