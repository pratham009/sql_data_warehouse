-- This script creates a data warehouse database named 'Datawareh' with three schemas: bronze, silver, and gold.
-- It first checks if the database exists, and if so, drops it before recreating it.
-- Use this when setting up or resetting the data warehouse.


USE master;
GO 


IF EXISTS (SELECT 1 FROM sys.databases WHERE name='Datawareh')
BEGIN 
    ALTER DATABASE Datawareh SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawareh;
END;
GO 

CREATE DATABASE Datawareh;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

