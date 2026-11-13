#!/bin/bash
# Runs only once, when the data volume is first created.
# Creates a separate database for e2e tests and grants the app user access to it.
set -e
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<SQL
CREATE DATABASE IF NOT EXISTS \`${DB_NAME}_test\`;
GRANT ALL PRIVILEGES ON \`${DB_NAME}_test\`.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;
SQL
