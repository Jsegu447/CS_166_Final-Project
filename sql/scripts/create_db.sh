#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
psql -h localhost -p 1024 "jsegu010_DB" < $DIR/../src/create_tables.sql
psql -h localhost -p 1024 "jsegu010_DB" < $DIR/../src/create_indexes.sql
psql -h localhost -p 1024 "jsegu010_DB" < $DIR/../src/load_data.sql

