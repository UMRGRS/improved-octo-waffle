
-- Use this to retrieve all the data from a table
-- Takes the name of the table as argument
DELIMITER $$
drop procedure if exists SelectEverythingFromTable $$
create procedure SelectEverythingFromTable(in tableToConsult varchar(50))
begin
	declare Error_num int;
    declare Error_Text varchar(50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
        end;
		if (tableToConsult is null) then
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
		else
			set @query0 = concat('SELECT * FROM ',tableToConsult);
            prepare stm1 from @query0;
			execute stm1;
			deallocate prepare stm1;
        end if;
end $$
DELIMITER ;

-- Use this to retieve the data of a certain row of any table
-- Takes 1-The table you want to consult 2-The id of the row you want to consult as arguments
DELIMITER $$
drop procedure if exists SelectInfo $$
create procedure SelectInfo(in tableToConsult varchar(50), in IDToConsult int)
begin
	declare Error_num int;
    declare Error_Text varchar(50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
        end;
		if (tableToConsult is null or idToConsult is null) then
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
		else
			set @query1 = concat('SELECT * FROM ',tableToConsult,' where ID=',IDToConsult);
            prepare stm1 from @query1;
			execute stm1;
			deallocate prepare stm1;
        end if;
end $$
DELIMITER ;

-- Use this to retrieve every compatible component with the one you give it
-- Takes 1-Componente para el que buscaras compatibilidad 2-Tipo de componente para buscar 3-Id del componente
-- SelectCompatibility("Placa","Disipador",1) --> This searches for the heatsinks compatible with the motherboard with the ID 1
DELIMITER $$
drop procedure if exists SelectCompatibility $$
create procedure SelectCompatibility(in table1 varchar(20), in table2 varchar(20), in IDToConsult int)
begin
	declare tab_name varchar(50);
    declare columnToDrop varchar(50);
	declare Error_num int;
    declare Error_Text varchar(50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
        end;
	if(table1 is null or table2 is null or IDToConsult is null) then
		set Error_num = -1;
		set Error_Text = "Ocurrio un error";
        select concat(Error_Text,' codigo: ',Error_num) as 'Error';
	else
		set tab_name = concat('compatibilidad_',table1,'_',table2);
		set columnToDrop = concat('ID_',table2);
		set @query2 = concat('create temporary table tableToReturn as SELECT * FROM ',tab_name,' inner join ',table2,' on ','ID_',table2,'=',table2,'.ID where ID_Principal =',IDToConsult);
		set @query3 = concat('alter table tableToReturn drop ID_Principal, drop ',columnToDrop);
		drop table if exists tableToReturn;
		prepare stm1 from @query2;
		execute stm1;
		deallocate prepare stm1;
		prepare stm2 from @query3;
		execute stm2;
		deallocate prepare stm2;
		select * from tableToReturn;
    end if;
end $$
DELIMITER ;

DELIMITER $$
drop procedure if exists LogIn $$
create procedure LogIn(in user1 varchar(50),in password1 varchar(50))
begin
	set @query4 = concat('SELECT * FROM usuarios WHERE username = "',user1,'"');
    select @query4;
    prepare stm1 from @query4;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;
select * from usuarios where username = "owo";
call LogIn('owo','uwu');