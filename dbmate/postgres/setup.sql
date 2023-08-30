
-- Create toolbox schema
CREATE SCHEMA toolbox;

-- Create tables
CREATE TABLE toolbox.schema_version (
  version VARCHAR PRIMARY KEY,
  release_date timestamptz NOT NULL,
  migration_date timestamptz NOT NULL
);

CREATE TABLE toolbox.migration_log (
  id SERIAL PRIMARY KEY,
  version VARCHAR NOT NULL,
  migration_date timestamptz NOT NULL,
  status VARCHAR NOT NULL,
  details TEXT
);

CREATE TABLE toolbox.configuration (
  parameter_name VARCHAR PRIMARY KEY,
  parameter_value VARCHAR NOT NULL,
  parameter_description VARCHAR NULL
);

CREATE TABLE toolbox.maintenance_schedule (
  task_name VARCHAR PRIMARY KEY,
  scheduled_date timestamptz NOT NULL,
  completion_date timestamptz,
  status VARCHAR NOT NULL
);

CREATE TABLE toolbox.audit_log (
  id SERIAL PRIMARY KEY,
  action VARCHAR NOT NULL,
  action_date timestamptz NOT NULL,
  details TEXT
);


-- Schemas
CREATE SCHEMA targets;
CREATE SCHEMA results;
CREATE SCHEMA meta;
CREATE SCHEMA logs;


-- Create Users
-- API
CREATE USER api WITH PASSWORD 'vf7dQ2nvvY1v0PZkoarV';

-- Rabbit Hole
CREATE USER rabbit_hole WITH PASSWORD 'AhihYoyQJdiv1rUBa0KI';

-- Rabbit Farm
CREATE USER rabbit_farm WITH PASSWORD 'mxGl6CQgBN0fnAN2Q10B';

-- Admin/Processes
CREATE USER management WITH PASSWORD 'kJ1pgQ4a3cZavbhMFFdA';



-- Add API User to tables
GRANT USAGE ON SCHEMA targets, toolbox, results, meta, logs TO api;








-- Create & Grant Users
-- Grafana Database User
CREATE USER grafanareader WITH PASSWORD 'super_grafana_password';
    GRANT USAGE ON SCHEMA axe, targets, events, orgs, refs, results TO grafanareader;
    GRANT SELECT ON ALL TABLES IN SCHEMA axe, targets, events, orgs, refs, results TO grafanareader
