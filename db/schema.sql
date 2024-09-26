-- Terminate all connections to the database
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'ecommerce_db'
  AND pid <> pg_backend_pid();

-- Drop database
DROP DATABASE IF EXISTS ecommerce_db;

-- Create the new database
CREATE DATABASE ecommerce_db;
