ARG RELEASE=snowflake:1.4.1
FROM ghcr.io/dbt-labs/dbt-${RELEASE}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]