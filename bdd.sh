#!/usr/bin/env bash

getBackup() {
    echo "Retrieving last backup."
    docker exec --env-file='./.env' -i db bash -c 'mongodump --archive="./tmp/dump-bizzy.gz" --gzip --db pswd-dev --uri "$DB_URL" && mongorestore --gzip --nsInclude="pswd-dev.*" --archive="./tmp/dump-bizzy-dev.gz"'
}

getBackup