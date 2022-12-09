#show variables like 'sql_mode';
#set sql_mode='';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/employee.csv' INTO TABLE employee
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/employee.csv' INTO TABLE employee
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
(employeeID,name,education); 
SELECT * FROM employee INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/employee.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
SELECT employeeID,name,education FROM employee INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/employee.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
employee