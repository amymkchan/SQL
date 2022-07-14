/*
Today's Topic: Stored Procedures
*/

CREATE OR REPLACE PROCEDURE control_transaction()
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  CREATE TABLE test1 (id int);
  INSERT INTO test1 VALUES (1);
  COMMIT;
  
  CREATE TABLE test2 (id int);
  INSERT INTO test2 VALUES (1);
  ROLLBACK;
END $$;

CREATE PROCEDURE Temp_person 
AS
DROP TABLE IF EXISTS #temp_person 
Create table #temp_person (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(7) NOT NULL,
  date_of_birth DATE NOT NULL,
  email VARCHAR(150) 
) 

INSERT INTO #temp_person VALUES
  ('Anne', 'Smith', 'FEMALE', DATE '1988-01-09',''), 
  ('Jake', 'Jones', 'MALE', DATE '1990-01-10','jake@gamil.com');

Select * 
From #temp_person
GO;
