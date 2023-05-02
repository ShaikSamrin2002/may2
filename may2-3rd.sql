DELIMITER // 
create procedure GetManagerInfo()
BEGIN
		select * from MANAGER;
END //

CALL GetManagerInfo()
-- making copy of data to stored procedures

DELIMITER // 
create procedure GetManagerAge()
BEGIN
		select * from MANAGER where age=28;
END //
CALL GetManagerAge();

select name from manager order by rand() limit 2;

