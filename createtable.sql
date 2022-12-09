CREATE DATABASE if not exists DBEM DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;
use dbem;
CREATE TABLE if not exists employee (
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
CREATE TABLE if not exists department (
	departmentID CHAR(3) PRIMARY KEY,			/*部门编号*/
	departName CHAR(20) NOT NULL,				/*部门名称*/
	comment VARCHAR(100)					/*备注*/
);
CREATE TABLE if not exists salary (
	employeeID CHAR(6) REFERENCES employee(employeeID), 		
	income REAL,						/*收入*/
	outcome REAL,						/*支出*/
PRIMARY KEY(employeeID)
);
select * from employee;
select * from department;
select * from salary;