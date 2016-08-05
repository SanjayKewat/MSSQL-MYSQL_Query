--  here is query used for creating autoincrement with 1000 with value 1 column,prefix with special character
CREATE TABLE Demo(ID INT IDENTITY(1001,1) PRIMARY KEY,IDwithChar AS 'U' + RIGHT(CAST(ID AS VARCHAR(10)), 6) PERSISTED,name varchar(20))                 
           
/* here is query used applying foreign key on table
references role_master(id){table passing parameter is column name,make sure this column is primary key}	
*/
CREATE TABLE Demo(ID INT IDENTITY(1001,1) PRIMARY KEY,user_id AS 'U' + RIGHT(CAST(ID AS VARCHAR(10)), 6) PERSISTED,first_name
varchar(500) NOT NULL,
	last_name varchar(500) NOT NULL,
	usr_name varchar(500) NOT NULL,
	usr_pwd varchar(500) NOT NULL,
	usr_address varchar(1000) NULL,
	city varchar(5000) NULL,
	mob_no int NULL,
	lnd_std int NULL,
	lnd_no int NULL,
	role_id int not null foreign key references role_master(id)	
	)     
	
-- create view 	query
create view user_view
as
select u.ID,u.user_id,u.first_name,u.last_name,u.usr_name,u.usr_pwd,u.usr_address,u.city,u.email_id,u.mob_no,u.lnd_std,u.lnd_no,u.role_id,r.role_name from user_tab u inner join role_master r on u.role_id=r.id 

--adding column on existing table
alter table user_tab add email_id varchar(500)      