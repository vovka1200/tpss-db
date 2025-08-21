DO
$$
    BEGIN
        IF NOT EXISTS(SELECT FROM pg_catalog.pg_roles WHERE rolname = 'tpss') THEN
            CREATE ROLE tpss WITH
                LOGIN
                NOSUPERUSER
                NOCREATEDB
                NOCREATEROLE
                INHERIT
                NOREPLICATION
                NOBYPASSRLS
                CONNECTION LIMIT -1
                PASSWORD '123';
        END IF;
    END
$$;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres
    GRANT INSERT, SELECT, UPDATE ON TABLES TO tpss;