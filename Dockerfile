# Container image that runs your code
FROM ghcr.io/dbt-labs/dbt-snowflake:1.4.1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

##
#  Generic dockerfile for dbt image building.
#  See README for operational details
##
#
#ARG DBT_VERSION=v1.3.0
#FROM mwhitaker/dbt_all:${DBT_VERSION}
#
#COPY entrypoint.sh /entrypoint.sh
#ENTRYPOINT [ "/entrypoint.sh" ]