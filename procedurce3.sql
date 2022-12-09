delimiter $$
CREATE PROCEDURE cp(in userid1 char(6),in userid2 char(6),OUT res INT)
BEGIN
DECLARE sr1,sr2 FLOAT(8,2);
SELECT income INTO sr1 FROM salary where employeeID=userid1;
SELECT income INTO sr2 FROM salary where employeeID=userid2;
IF sr1>sr2
THEN SET res=0;
ELSE SET res=1;
END IF;
END $$
delimiter ;
set @result=0;
call cp('000001','010008',@result);
select @result;
call cp('000001','020010',@result);
select @result;
