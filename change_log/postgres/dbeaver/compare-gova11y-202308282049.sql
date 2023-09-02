CREATE TABLE "results"."migration_log" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "version" VARCHAR NOT NULL, "migration_date" TIMESTAMP WITH TIME ZONE NOT NULL, "status" VARCHAR NOT NULL, "details" TEXT, CONSTRAINT "migration_log_pkey" PRIMARY KEY ("id"));

CREATE TABLE "results"."audit_log" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "action" VARCHAR NOT NULL, "action_date" TIMESTAMP WITH TIME ZONE NOT NULL, "details" TEXT, CONSTRAINT "audit_log_pkey" PRIMARY KEY ("id"));

CREATE TABLE "results"."configuration" ("parameter_name" VARCHAR NOT NULL, "parameter_value" VARCHAR NOT NULL, "parameter_description" VARCHAR, CONSTRAINT "configuration_pkey" PRIMARY KEY ("parameter_name"));

CREATE TABLE "results"."db_version" ("version" VARCHAR NOT NULL, "release_date" TIMESTAMP WITH TIME ZONE NOT NULL, "migration_date" TIMESTAMP WITH TIME ZONE NOT NULL, CONSTRAINT "db_version_pkey" PRIMARY KEY ("version"));

CREATE TABLE "results"."maintenance_schedule" ("task_name" VARCHAR NOT NULL, "scheduled_date" TIMESTAMP WITH TIME ZONE NOT NULL, "completion_date" TIMESTAMP WITH TIME ZONE, "status" VARCHAR NOT NULL, CONSTRAINT "maintenance_schedule_pkey" PRIMARY KEY ("task_name"));

CREATE TABLE "results"."schema_version" ("version" VARCHAR NOT NULL, "release_date" TIMESTAMP WITH TIME ZONE NOT NULL, "migration_date" TIMESTAMP WITH TIME ZONE NOT NULL, CONSTRAINT "schema_version_pkey" PRIMARY KEY ("version"));
