SET Foreign_key_checks=1;
CREATE TABLE if not exists salary1 (
	employeeID CHAR(6) REFERENCES employee(employeeID), 		
	income REAL,						/*收入*/
	outcome REAL,						/*支出*/
	PRIMARY KEY(employeeID),
    foreign key(employeeID)
    references salary(employeeID)
    on delete cascade
    on update cascade
);
insert ignore into salary1(employeeID,income,outcome) 
	select employeeID,income,outcome from salary;
select * from salary1;
update ignore salary set outcome='123' where employeeID=1;
select*from salary;
delete ignore from salary where employeeID='504209';
select * from salary1;

update ignore salary set outcome='123.09' where employeeID=1;
insert into salary values('504209', '2066.15', '108');