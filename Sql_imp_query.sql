--  here is query for creating autoincrement with 1000 with value 1 column,prefix with special character
CREATE TABLE Demo(ID INT IDENTITY(1001,1) PRIMARY KEY,IDwithChar AS 'U' + RIGHT(CAST(ID AS VARCHAR(10)), 6) PERSISTED,name varchar(20))                 
           