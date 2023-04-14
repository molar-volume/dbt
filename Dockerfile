ARG RELEASE=postgres

FROM ghcr.io/dbt-labs/dbt-${RELEASE}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]