
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
			set @query1 = concat('SELECT * FROM ',tableToConsult,' WHERE ID=',IDToConsult);
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
		set @query2 = concat('CREATE TEMPORARY TABLE tableToReturn AS SELECT * FROM ',tab_name,' INNER JOIN ',table2,' ON ','ID_',table2,'=',table2,'.ID WHERE ID_Principal =',IDToConsult);
		set @query3 = concat('ALTER TABLE tableToReturn DROP ID_Principal, DROP ',columnToDrop);
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

-- Use this to log in into the page
-- Takes 1- Username 2- Password
-- Gives 1- Aut --> True = Log in correct False --> Log in incorrect(Wrong username or/and password, user isn't register)
-- 2 - Message --> Debug message
DELIMITER $$
drop procedure if exists LogIn $$
create procedure LogIn(in username varchar(50),in passIn varchar(50),out aut bool,out message varchar(50))
begin
	declare rowCount int;
    declare pass varchar(50);
	declare continue handler for sqlexception
		begin
			set aut = -1;
            set message = "Ocurrio un error";
            select concat(aut,' codigo: ',message) as 'Error';
        end;
	set @query4 = concat('CREATE TEMPORARY TABLE userExists as SELECT * FROM usuarios WHERE username = "',username,'"');
    drop table if exists userExists;
    prepare stm1 from @query4;
	execute stm1;
	deallocate prepare stm1;
    set rowCount = (select count(*) from userExists);
    if(rowCount = 1) then
        set pass = (select `password` from userExists);
        if(passIn = pass) then
			set aut = true;
			set message = concat("Sitio web mas adelante");
		else
			set aut = false;
			set message = concat("You're not welcome here");
        end if;
	else
		set aut = false;
        set message = "User doesn't exists";
    end if;
end $$
DELIMITER ;

-- Use this to register new users
-- Takes 1- New username 2- New password
-- Gives aut - True --> User was registered succesfully False --> User wasn't registered
DELIMITER $$
drop procedure if exists UserRegister $$
create procedure UserRegister(in username varchar(50),in passIn varchar(50),out aut bool)
begin 
	declare rowCount int;
    declare pass varchar(50);
    declare error_num int;
    declare message varchar(50);
    declare continue handler for 1062
		begin
			set error_num = 1062;
			set aut = false;
            set message = "User already exists try another one";
            select concat('Code: ',error_num,' ',message);
        end;
	declare continue handler for 1048
		begin
			set error_num = 1062;
			set aut = false;
            set message = "Null ID, username or password";
            select concat('Code: ',error_num,' ',message);
        end;
	declare continue handler for sqlexception
		begin
			set error_num = 1062;
			set aut = false;
            set message = "Ocurrio un error";
            select concat('Code: ',error_num,' ',message);
        end;
	set error_num = 0;
	set @query5 = concat('INSERT INTO usuarios (Username, Password) VALUES ("',username,'","',passIn,'")');
    prepare stm1 from @query5;
    execute stm1;
    deallocate prepare stm1;
    if(error_num = 0) then
			set aut = true;
            set message = "User successfully registered";
            select concat('Code: ',error_num,' ',message);
    end if;
end $$
DELIMITER ;

