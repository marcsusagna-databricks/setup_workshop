TOKEN="dummy_token" #retrieve from gitlab secrets
env="dev"
load_env_vars(env) #workspace_id, catalog_names, sp_names, group_names...

export DATABRICKS_HOST="https://adb-7405613972875759.19.azuredatabricks.net/"
export DATABRICKS_TOKEN="$TOKEN"

databricks bundle deploy -t "$env"
## Others:
# Run integration tests as jobs:
databricks bundle run
# Deploy env vars if needed interactively in databricks clusters
# Dump local vars into a .env file, then import it into the Workspace:
cat > config.env <<EOF
WORKSPACE_ID=$workspace_id
CATALOG_NAMES=$catalog_names
SP_NAMES=$sp_names
GROUP_NAMES=$group_names
EOF
databricks workspace import /Workspace/libraries/config/config.env \
  --file config.env --format RAW --overwrite
