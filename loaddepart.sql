LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/department.csv' INTO TABLE department
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/department.csv' INTO TABLE department
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
(departmentID,departName,comment); 
SELECT * FROM department INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/department.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
SELECT departmentID,departName,comment FROM department INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/department.csv'
CHARACTER SET gbk
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';
