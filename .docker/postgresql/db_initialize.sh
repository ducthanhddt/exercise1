#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \c postgres;

    CREATE TABLE entry_fields(
      id serial NOT NULL primary key,
      fieldid integer not null,
      name varchar(256),
      value varchar(256),
      entryid integer not null,
      formid integer not null,
      created_at timestamp not null
    );
EOSQL
