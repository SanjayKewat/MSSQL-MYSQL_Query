--  here is query for creating autoincrement column,prefix with special character
CREATE TABLE Demo(ID INT IDENTITY(1001,1) PRIMARY KEY,IDwithChar AS 'U' + RIGHT(CAST(ID AS VARCHAR(10)), 6) PERSISTED,name varchar(20))                 
           