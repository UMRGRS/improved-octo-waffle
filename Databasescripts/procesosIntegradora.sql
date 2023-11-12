-- Done
-- Use this to retrieve all the data from a table
-- Takes the name of the table as argument
DELIMITER $$
drop procedure if exists SelectEverythingFromTable $$
create procedure SelectEverythingFromTable(in tableToConsult varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
            select status_code, message;
        end;
        
	set @query0 = concat('SELECT * FROM ',tableToConsult);
	prepare stm1 from @query0;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

-- Done
-- Use this to retieve the data of a certain row of any table
-- Takes 1-The table you want to consult 2-The id of the row you want to consult as arguments
DELIMITER $$
drop procedure if exists SelectInfo $$
create procedure SelectInfo(in tableToConsult varchar(50), in IDToConsult int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
            select status_code, message;
        end;
        
	set @query1 = concat('SELECT * FROM ',tableToConsult,' WHERE ID=',IDToConsult);
    
	prepare stm1 from @query1;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

-- Done
-- Use this to retrieve every compatible component with the one you give it
-- SelectCompatibility("Placa","Disipador",1) --> This searches for the heatsinks compatible with the motherboard with the ID 1
DELIMITER $$
drop procedure if exists SelectCompatibility $$
create procedure SelectCompatibility(in table1 varchar(20), in table2 varchar(20), in IDToConsult int)
begin
	declare status_code int default 0;
    declare message varchar(50);

	declare tab_name varchar(50);
    declare con_table varchar(50);
    declare columnToDrop varchar(50);

	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
            select status_code, message;
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

-- Done
-- Use this to log in into the page
-- Takes 1- Username 2- Password
-- aut -> false: user isn't registered OR password isn't correct(Check message) true: login succesfull
DELIMITER $$
drop procedure if exists LogIn $$
create procedure LogIn(in username varchar(50),in passIn varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
	declare aut bool default 0;
    
	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
    
	set @query4 = concat('SELECT count(*), `password` FROM usuarios WHERE username = "',username,'" into @rowCount, @pass');
    
    prepare stm from @query4;
	execute stm;
	deallocate prepare stm;
    
    if(@rowCount = 1) then
        if(MD5(passIn) = @pass) then
			set aut = true;
			set message = "Sitio web mas adelante";
            select status_code, message, aut;
		else
			set message = "You're not welcome here";
            select status_code, message, aut;
        end if;
	else
        set message = "User isn't registered";
        select status_code, message, aut;
    end if;
end $$
DELIMITER ;

-- Done
-- Use this to register new users
-- Takes 1- username 2- password 3- email
-- aut -> false: user wasn't registered true: user was registered successfully
DELIMITER $$
drop procedure if exists UserRegister $$
create procedure UserRegister(in username varchar(50),in passIn varchar(50),in email varchar(100))
begin 
	declare rowCount int;
    declare pass varchar(50);
    
    declare aut bool default 0;
    declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
    declare continue handler for 1062
		begin
			set status_code = 1062;
            set message = "Username or email already in use try another one";
            select status_code, message, aut;
        end;
	declare continue handler for 1048
		begin
			set status_code = 1048;
            set message = "Null ID, username or password";
            select status_code, message, aut;
        end;
	
	set @query5 = concat('INSERT INTO usuarios (username, password, email) VALUES ("',username,'",MD5("',passIn,'"), "',email,'")');
    
    prepare stm1 from @query5;
    execute stm1;
    deallocate prepare stm1;
    
    if(status_code = 0) then
			set aut = true;
            set message = "User successfully registered";
            select status_code, message, aut;
    end if;
end $$
DELIMITER ;

