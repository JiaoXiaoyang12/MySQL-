select name,address,phone from employee;
select distinct departmentID,gender from employee;
select name,phone from employee where departmentID=(
select departmentID from department where departName='财务部');
select address as '地址',phone as '电话' from employee where gender=0;
select max(income),min(income) from salary where employeeID in(
select employeeID from employee where departmentID=(
select departmentID from department where departName='财务部'));
select employeeID from salary where income>=2000 and income<=3000;

select * from employee where departmentID in (
select departmentID from department where departName='财务部');
select * from employee where employeeID in(
select employeeID from salary where income<2500);

select distinct employee.*,salary.* from employee,salary 
	where employee.employeeID=salary.employeeID;
SELECT departname,name FROM employee
	JOIN salary ON employee.employeeID=salary.employeeID
	JOIN Department ON Department.DepartmentID=Employee.DepartmentID
	WHERE name='王林';
select name,income,outcome from employee
	join salary on employee.employeeID=salary.employeeID
    join department on department.departmentID=employee.departmentID
    where departName='财务部'and income>2000;
    
select gender,count(*) as 'num_employee' from employee group by gender;
#select department.departName,count(employee.employeeID) from department,employee 
#	group by employee.departmentID=department.departmentID
#	having count(employee.employeeID)>2;
#select departName,departmentID,count(employeeID) from employee
#group by departmentID having count(employee)>2 and 
#departname=(select departName from department where ;
select department.departName,count(employeeID)from department,employee 
	where department.departmentID=employee.departmentID 
    group by department.departmentID 
    having count(employeeID)>2;
select * from employee order by employeeID desc;
select * from employee order by employeeID limit 0,5;

select income from v_em where name='王林';