File path template \*
Bytebase only observes the file path name matching the template pattern relative to the base directory. Learn more

- required placeholder: {{DB_NAME}}, {{VERSION}}, {{TYPE}}; optional placeholder: {{ENV_ID}}, {{DESCRIPTION}}; optional directory wildcard: \*, \*\*

• File path example for schema migration type:
bytebase/env1/db1/202101131000##ddl.sql

bytebase/test/ga_test/0.0.1##ddl.sql

prod

• File path example for data migration type:

bytebase/env1/db1/202101131000##dml.sql
