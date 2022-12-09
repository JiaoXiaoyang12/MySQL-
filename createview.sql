create view v_dp as select departmentID,departName,comment from department;
create view v_em as select employee.employeeID,employee.name,salary.income 
	from employee,salary where employee.employeeID=salary.employeeID;