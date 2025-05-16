-- File: DROP_ALL.sql
-- Purpose: Drops all user-defined tables, views, sequences, functions, triggers, and roles in the public schema
-- Warning: This is a destructive operation. Backup your database before running.

SET client_min_messages TO WARNING; -- Suppress notices for cleaner output

DO $$
    DECLARE
        r RECORD;
        current_role TEXT := current_user; -- Store current user to avoid dropping self
    BEGIN
        -- Drop all tables in public schema
        FOR r IN (
            SELECT tablename
            FROM pg_tables
            WHERE schemaname = 'public'
        ) LOOP
                EXECUTE 'DROP TABLE IF EXISTS public.' || quote_ident(r.tablename) || ' CASCADE';
            END LOOP;

        -- Drop all views in public schema
        FOR r IN (
            SELECT viewname
            FROM pg_views
            WHERE schemaname = 'public'
        ) LOOP
                EXECUTE 'DROP VIEW IF EXISTS public.' || quote_ident(r.viewname) || ' CASCADE';
            END LOOP;

        -- Drop all materialized views in public schema
        FOR r IN (
            SELECT matviewname
            FROM pg_matviews
            WHERE schemaname = 'public'
        ) LOOP
                EXECUTE 'DROP MATERIALIZED VIEW IF EXISTS public.' || quote_ident(r.matviewname) || ' CASCADE';
            END LOOP;

        -- Drop all sequences in public schema
        FOR r IN (
            SELECT sequencename
            FROM pg_sequences
            WHERE schemaname = 'public'
        ) LOOP
                EXECUTE 'DROP SEQUENCE IF EXISTS public.' || quote_ident(r.sequencename) || ' CASCADE';
            END LOOP;

        -- Drop all functions in public schema
        FOR r IN (
            SELECT proname, oidvectortypes(proargtypes) AS argtypes
            FROM pg_proc
                     JOIN pg_namespace ON pg_proc.pronamespace = pg_namespace.oid
            WHERE pg_namespace.nspname = 'public'
        ) LOOP
                EXECUTE 'DROP FUNCTION IF EXISTS public.' || quote_ident(r.proname) || '(' || r.argtypes || ') CASCADE';
            END LOOP;

        -- Drop all roles except current user and built-in roles
        FOR r IN (
            SELECT rolname
            FROM pg_roles
            WHERE rolname != current_role
              AND rolname NOT LIKE 'pg_%'
              AND rolname != 'postgres'
        ) LOOP
                -- Reassign owned objects to current user to avoid dependency issues
                EXECUTE 'REASSIGN OWNED BY ' || quote_ident(r.rolname) || ' TO ' || quote_ident(current_role);
                EXECUTE 'DROP ROLE IF EXISTS ' || quote_ident(r.rolname);
            END LOOP;

        -- Ensure triggers are dropped (already handled by DROP TABLE CASCADE, but included for completeness)
        FOR r IN (
            SELECT trigger_name, event_object_table
            FROM information_schema.triggers
            WHERE trigger_schema = 'public'
        ) LOOP
                EXECUTE 'DROP TRIGGER IF EXISTS ' || quote_ident(r.trigger_name) || ' ON public.' || quote_ident(r.event_object_table);
            END LOOP;

        RAISE NOTICE 'All user-defined objects in public schema and non-built-in roles dropped successfully.';
    END $$;

-- Reset client messages
SET client_min_messages TO NOTICE;