CREATE TABLE if not exists employee1 (
	employeeID CHAR(6) NOT NULL,		/*员工号*/
	name CHAR(10) NOT NULL primary key,					/*姓名 */
	education CHAR(4) NOT NULL,				/*学历*/
	gender TINYINT(1) NOT NULL DEFAULT 1,      /*男1女0*/
    unique(employeeID)
);
CREATE TABLE if not exists employee2 (
	employeeID CHAR(6) NOT NULL,		/*员工号*/
	name CHAR(10) NOT NULL,					/*姓名 */
	education CHAR(4) NOT NULL,				/*学历*/
	gender TINYINT(1) NOT NULL DEFAULT 1		/*男1女0*/
);
alter table employee2 add primary key(employeeID);

insert ignore into employee1 values('000001','王林','大专',1);
insert ignore into employee1 values(null,'王林','大专',1);
insert ignore into employee1 values('000001',null,'大专',1);
insert ignore into employee1 values(null,null,'大专',1);
insert ignore into employee2 values('000001','王林','大专',1);
insert ignore into employee2 values(null,'王林','大专',1);
select*from employee1;
select *from employee2;