delimiter $$
create procedure compare_income(in employeeID_left char(6),in employeeID_right char(6),out result int)
begin
DECLARE income_left,income_right FLOAT(8,2);
select income into income_left from salary where employeeID=employeeID_left;
select income into income_right from salary where employeeID=employeeID_right;
if income_left>income_right
then set result =1;
else set result=0;
end if;
end $$
delimiter ;
set @result=0;
call count_employee('000001','010008',@result);
select @result;
call count_employee('000001','020010',@result);
select @result;