insert ignore into salary(employeeID,income,outcome) values(2,1000,0);
#create user 'clientA'@'localhost' identified by '123456';
#create user 'clientB'@'localhost' identified by '123456';
grant all on DBEM.* to clientA@localhost;
grant all on DBEM.* to clientB@localhost;
set session transaction isolation level read committed;
set @@autocommit=0;
select @@tx_isolation;