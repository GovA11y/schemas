CREATE TABLE toolbox.migration_log (
  id SERIAL PRIMARY KEY,
  version VARCHAR NOT NULL,
  migration_date timestamptz NOT NULL,
  status VARCHAR NOT NULL,
  details TEXT
);
