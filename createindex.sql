create unique index in_departName on department(departName);
#show index from department;
#drop index in_departName on department;
#show index from department;

create index idx_employee1 on employee(name,address);

CREATE TABLE if not exists department1 (
	departmentID CHAR(3)not null,			/*部门编号*/
	departName CHAR(20) NOT NULL PRIMARY KEY,				/*部门名称*/
	comment VARCHAR(100)					/*备注*/
);
create index in_departmentID on department1(departmentID);

CREATE TABLE if not exists tmpEmployee (
	employeeID CHAR(6) NOT NULL PRIMARY KEY,		/*员工号*/
	name CHAR(10) NOT NULL,					/*姓名 */
	education CHAR(4) NOT NULL,				/*学历*/
	birth DATE NOT NULL,					/*出生日期*/
	gender TINYINT(1) NOT NULL DEFAULT 1,		/*男1女0*/
	workYear TINYINT(1),					/*工作时间*/
	address VARCHAR(100),					/*地址*/
	phone CHAR(12),						/*电话号码*/	
    departmentID CHAR(3) REFERENCES department(departmentID)
);
create index hash_employeeID using HASH on tmpEmployee(employeeID);