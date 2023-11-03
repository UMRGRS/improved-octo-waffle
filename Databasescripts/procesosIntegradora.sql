DELIMITER $$
drop procedure if exists SelectInfo $$
create procedure SelectInfo(tableToConsult varchar(50), idToConsult int)
begin
	declare Error_num int;
    declare Error_Text varchar(50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
        end;
		if (tableToConsult is null or idToConsult is null) then
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
		else
			select * from tableToConsult where ID = idToConsult;
        end if;
end $$
DELIMITER ;

DELIMITER $$
drop procedure if exists SelectCompatibility $$
create procedure SelectCompatibility(table1 varchar(20), table2 varchar(20), IdToConsult int)
begin
	declare Error_num int;
    declare Error_Text varchar(50);
    declare tableToConsult varchar (50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
        end;
	prepare selectStm from 'Select * from ? where ID_Principal = ?';
	set tableToConsult = concat("compatibilidad_",table1,"_",table2);
    set @table1 = tableToConsult;
    set @number1 =IdToConsult;
    select @table1;
    select @number1;
    execute selectStm using @table1, @number1;
end $$
DELIMITER ;