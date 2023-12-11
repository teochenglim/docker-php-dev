#!/bin/bash

until mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent -e "SELECT 1;" 2>/dev/null; do
  echo 'Waiting for MySQL to be ready...'
  sleep 1
done

mysql -uroot -p"$MYSQL_ROOT_PASSWORD" < /docker-entrypoint-initdb.d/init.sql
