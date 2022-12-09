delimiter $$
create procedure count_employee(out n_employee int)
begin
select count(*) into n_employee from employee;
end $$
delimiter ;

set @n_employee=1;
call count_employee(@n_employee);
select @n_employee;