create table employee_copy as(select * from employee);
select * from employee;
delete from employee where employeeID=1;
select * from employee;
insert into employee values('000001','王林','大专','1966/1/23',1,8,'中山路32号',83355668,2);
select * from employee;
select*from salary;
delete from salary where employeeID=1;
select * from salary;
insert into salary values('000001',2100.8,123.09);
select *from salary;
update employee set departmentID=4 where employeeID='020018';
select * from employee;
delete ignore from employee where employeeID='102201';
select * from employee;
delete from employee 
where employeeID in
(select employeeID from salary 
where income>2500);
select * from employee;
insert into employee(employeeID,name,education,birth,gender,workYear,address,phone,departmentID)
select employeeID,name,education,birth,gender,workYear,address,phone,departmentID from employee_copy
where employee_copy.employeeID not in(select employeeID from employee);
drop table employee_copy;
update employee set departmentID=1 where employeeID='020018';
select*from employee;