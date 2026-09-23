#!/bin/bash

# Database configuration from .env
DB_HOST="127.0.0.1"
DB_USER="root"
DB_PASS="root"
DB_NAME="prom_sql_prominence_academy"
SQL_FILE="prom_sql_prominence_academy_1.sql"

echo "Creating database if it doesn't exist..."
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"

if [ $? -eq 0 ]; then
    echo "Database '$DB_NAME' created or already exists."
else
    echo "Error creating database."
    exit 1
fi

echo "Importing SQL backup '$SQL_FILE' into database '$DB_NAME'..."
if [ -f "$SQL_FILE" ]; then
    mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE"
    if [ $? -eq 0 ]; then
        echo "Database imported successfully!"
    else
        echo "Error importing SQL file."
    fi
else
    echo "SQL backup file '$SQL_FILE' not found in this directory."
fi
