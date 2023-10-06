/*stored procedure
without parameter*/
DELIMITER //
create procedure spGetSome()
begin
	select name from students;
end//
delimiter ;

call spGetSome;

DELIMITER //
create procedure spGetSomeName()
begin
	select name from students order by name;
end//
delimiter ;

/*stored procedure
with parameter (IN)*/

DELIMITER //
create procedure spGetMax(In mark int)
begin
	select * from students where marks>=mark;
end//
delimiter ;

call spGetMax(40);


/*stored procedure
with parameter (OUT)*/
DELIMITER //
create procedure spGetMaxMark(out max_mark int)
begin
	select max(marks) into max_mark from students ;
end//
delimiter ;

call spGetMaxMark(a);
select @a;


/*stored procedure
with parameter (INOUT)*/
DELIMITER //
create procedure spGetMaxMarkOf(inout max_mark int)
begin
	select phone into max_mark from students where marks = max_mark;
end//
delimiter ;

set @m = 40;
call spGetMaxMarkOf(@m);
select @m;


/*delete a stored procedure*/
drop procedure spGetMaxMarkOf;