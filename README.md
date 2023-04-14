# GitHub Action for DBT

Runs DBT project.

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
uses: molar-volume/dbt@snowflake
with:
  commands: |
    dbt deps
    dbt test
    dbt seed
    dbt run
env:
  account: ${{ secrets.SF_ACCOUNT }}
  user: ${{ secrets.SF_USER }}
  password: ${{ secrets.SF_PASS }}
  role: sysadmin
```
