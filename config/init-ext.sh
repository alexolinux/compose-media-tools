#!/bin/bash

set -euo pipefail

SERVICE=owncloud
CONFIG_PATH=/mnt/data/config/config.php
TMP_PATH=/mnt/data/config/config.php.tmp
MARK="'files_external_allow_create_new_local' => 'true',"

echo "[INFO] Inserting required external files parameter..."
docker-compose exec "$SERVICE" bash -c "
  awk '/^[[:space:]]*\\);[[:space:]]*$/ { print \"  \047files_external_allow_create_new_local\047 => \047true\047,\" } 1' \
    $CONFIG_PATH > $TMP_PATH && mv $TMP_PATH $CONFIG_PATH
"

echo "[INFO] Finished successfully! Run the following docker-compose command:"
echo "  docker-compose exec $SERVICE tail -n 5 $CONFIG_PATH"

