# GitHub Action for DBT Snowflake

Runs DBT project on Snowflake.

## Inputs

### `command`

**Required:** DBT command to run. Can be multi-line (see example). Default `"dbt build"`.

### `project_folder`

Path to DBT project. Must contain `dbt_config.yml` and `profiles.yml`. Default `"."`.

## Outputs

### `time`

The time of execution.

## Example usage

```yaml
uses: molar-volume/dbt-snowflake@main
with:
  command: |
    dbt deps
    dbt test
    dbt seed
    dbt run
```
