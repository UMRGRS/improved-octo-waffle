
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
		set @query0 = concat('SELECT * FROM ',tableToConsult);
		prepare stm1 from @query0;
		execute stm1;
		deallocate prepare stm1;
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
		set @query1 = concat('SELECT * FROM ',tableToConsult,' WHERE ID=',IDToConsult);
		prepare stm1 from @query1;
		execute stm1;
		deallocate prepare stm1;
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
    declare con_table varchar(50);
    declare columnToDrop varchar(50);
	declare Error_num int;
    declare Error_Text varchar(50);
	declare continue handler for sqlexception
		begin
			set Error_num = -1;
            set Error_Text = "Ocurrio un error";
            select concat(Error_Text,' codigo: ',Error_num) as 'Error';
        end;
	set tab_name = concat('compatibilidad_',table1,'_',table2);
	set columnToDrop = concat('ID_',table2);
    set con_table = concat('tableToReturn',connection_id());
	set @query2 = concat('CREATE TEMPORARY TABLE ',con_table,' AS SELECT * FROM ',tab_name,' INNER JOIN ',table2,' ON ','ID_',table2,'=',table2,'.ID WHERE ID_Principal =',IDToConsult);
	set @query3 = concat('ALTER TABLE ', con_table ,' DROP ID_Principal, DROP ',columnToDrop);
    set @query6 = concat('DROP TABLE IF EXISTS ',con_table);
    set @query7 = concat('SELECT * FROM ',con_table);
    prepare stm from @query6;
	execute stm;
	deallocate prepare stm;
	prepare stm1 from @query2;
	execute stm1;
	deallocate prepare stm1;
	prepare stm2 from @query3;
	execute stm2;
	deallocate prepare stm2;
	prepare stm3 from @query7;
	execute stm3;
	deallocate prepare stm3;
end $$
DELIMITER ;

call SelectCompatibility("gabinete","grafica",1);

-- Use this to log in into the page
-- Takes 1- Username 2- Password
-- Gives 1- Aut --> True = Log in correct False --> Log in incorrect(Wrong username or/and password, user isn't register)
-- 2 - Message --> Debug message
DELIMITER $$
drop procedure if exists LogIn $$
create procedure LogIn(in username varchar(50),in passIn varchar(50),out aut bool,out message varchar(50))
begin
    declare pass varchar(50);
    declare con_table varchar(50);
	
	set con_table = concat('userExists',connection_id());
	set @query4 = concat('CREATE TEMPORARY TABLE ',con_table,' as SELECT * FROM usuarios WHERE username = "',username,'"');
    set @query8 = concat('DROP TABLE IF EXISTS ', con_table);
    set @query9 = concat('select count(*) into @rowCount from ',con_table);
    set @query10 = concat('select `password` into @pass from ',con_table);
    prepare stm from @query8;
	execute stm;
	deallocate prepare stm;
    
    prepare stm1 from @query4;
	execute stm1;
	deallocate prepare stm1;
    
	prepare stm2 from @query9;
	execute stm2;
	deallocate prepare stm2;
    if(@rowCount = 1) then
		prepare stm3 from @query10;
		execute stm3;
		deallocate prepare stm3;
        if(passIn = @pass) then
			set aut = true;
			set message = concat("Sitio web mas adelante");
		else
			set aut = false;
			set message = concat("You're not welcome here");
        end if;
	else
		set aut = false;
        set message = "User isn't registered";
    end if;
end $$
DELIMITER ;

call LogIn("owo","uwu",@aut,@mess);

select concat(@aut," ",@mess);

-- Implement encryptation //////
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

