flush privileges;
grant insert,select,delete,update on employee to user_1@localhost;
grant select on salary to user_1@localhost with grant option;
grant select on salary to user_3@localhost3306;
revoke select on employee from user_1@localhost;