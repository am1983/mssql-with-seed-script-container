IF NOT EXISTS (SELECT * FROM master.sys.databases WHERE name = N'TestDatabase')
BEGIN
    CREATE DATABASE TestDatabase;
END
GO

USE [TestDatabase]
GO

IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'TestTable' AND type = 'U')
BEGIN
    CREATE TABLE TestTable (ID INT NOT NULL, TestWord VARCHAR(25) NOT NULL)

    INSERT INTO TestTable VALUES (1, 'Word')

    SELECT * FROM TestTable
END
GO