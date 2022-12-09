delimiter $$
create trigger t_del_employee after delete on employee for each row
	begin
    delete from salary where employeeID=old.employeeID;
    end $$
delimiter ;

delimiter $$
create trigger t_upd_employee after update on employee for each row
	begin
    update salary set income=income+500*(new.workYear-old.workYear)
    where new.employeeID=old.employeeID;
    end $$
delimiter ;