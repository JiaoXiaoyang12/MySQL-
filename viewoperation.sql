insert ignore into v_dp values('6','广告部','推广产品');
select * from v_dp;
select * from department;
#insert ignore into v_em values('000002','王华','2200');
update ignore v_em set name='王浩' where employeeID=1;
select * from v_em;
select * from employee;
delete ignore from v_dp where departmentID=1;
select * from v_dp;
select * from department;
alter table department add column note varchar(10) null;

select * from department;
select * from v_dp;