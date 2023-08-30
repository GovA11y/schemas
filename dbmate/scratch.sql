CREATE USER grafanareader WITH PASSWORD 'super_grafana_password';


deva11y
SuperSecura11y

GRANT USAGE ON SCHEMA axe, targets, events, orgs, refs, results TO grafanareader;
GRANT SELECT ON ALL TABLES IN SCHEMA axe, targets, events, orgs, refs, results TO grafanareader;




CREATE SCHEMA targets;
CREATE SCHEMA results AUTHORIZATION deva11y;
CREATE SCHEMA meta AUTHORIZATION deva11y;
CREATE SCHEMA logs AUTHORIZATION deva11y;





-- Create Schemas
CREATE SCHEMA axe AUTHORIZATION a11ydata;
CREATE SCHEMA targets AUTHORIZATION a11ydata;
CREATE SCHEMA events AUTHORIZATION a11ydata;
CREATE SCHEMA orgs AUTHORIZATION a11ydata;
CREATE SCHEMA refs AUTHORIZATION a11ydata;
CREATE SCHEMA results AUTHORIZATION a11ydata;


-- Create Users
-- API
CREATE USER api WITH PASSWORD 'vf7dQ2nvvY1v0PZkoarV';

-- Rabbit Hole
CREATE USER rabbit_hole WITH PASSWORD 'AhihYoyQJdiv1rUBa0KI';

-- Rabbit Farm
CREATE USER rabbit_farm WITH PASSWORD 'mxGl6CQgBN0fnAN2Q10B';

-- Admin/Processes
CREATE USER management WITH PASSWORD 'kJ1pgQ4a3cZavbhMFFdA';