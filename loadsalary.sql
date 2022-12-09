LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/salary.csv' INTO TABLE salary
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/salary.csv' INTO TABLE salary
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
(employeeID,income,outcome); 
SELECT * FROM salary INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/salary.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
SELECT employeeID,income,outcome FROM salary INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/salaryemployee.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';