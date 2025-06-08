-- migrate:up
ALTER TABLE "public"."users"
    ADD COLUMN "updated_at" timestamptz NULL DEFAULT now(),
    ADD COLUMN "first_name" varchar(30) NOT NULL,
    ADD COLUMN "last_name" varchar(30) NOT NULL,
    ADD COLUMN "password" varchar(30) NOT NULL,
    ADD COLUMN "enabled" BOOLEAN NOT NULL DEFAULT TRUE,
    ADD COLUMN "last_access_time" timestamptz DEFAULT now();

-- migrate:down
ALTER TABLE "public"."users"
    DROP COLUMN "updated_at",
    DROP COLUMN "first_name",
    DROP COLUMN "last_name",
    DROP COLUMN "password",
    DROP COLUMN "enabled",
    DROP COLUMN "last_access_time";
