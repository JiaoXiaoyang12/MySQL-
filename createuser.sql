set sql_safe_updates=0;
create user 'user_1'@'localhost3306' identified by '1234';
create user 'user_2'@'localhost3306' identified by '1234';
flush privileges;
rename user 'user_2'@'localhost3306'to'user_3'@'localhost3306';
set password for 'user_3'@'localhost3306'='123456';
#update user set authentication_string=password("123456") where user='user_3';
#rename user 'use_2'@'localhost3306'to'use_3'@'localhost3306';

#drop user user_1@localhost3306;
#drop user user_3@localhost3306;