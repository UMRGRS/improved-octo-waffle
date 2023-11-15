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
	declare tableName varchar (50);
	declare tab_name varchar(50);
    declare con_table varchar(50);
    declare columnToDrop varchar(50);

	set tableName = concat('compatibilidad_',table1,'_',table2);
	set @compQuery = concat('select s.ID, s.modelo from ', table2,' s right join ', tableName,' comp 
					on s.ID = comp.ID_',table2,' where comp.ID_Principal = ', IDToConsult);
	prepare stm from @compQuery;
    execute stm;
    deallocate prepare stm;
end $$
DELIMITER ;

call SelectCompatibility("gabinete","grafica",1);
select s.ID, s.modelo from grafica s right join compatibilidad_gabinete_grafica comp on s.ID = comp.ID_Grafica where comp.ID_Principal = 1;	  


-- Done
-- Use this to log in into the page
-- Takes 1- Username 2- Password
-- aut -> false: user isn't registered OR password isn't correct(Check message) true: login succesfull
-- Cuidado con la inyeccion sql xd
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
    
	set @query4 = concat('SELECT count(*), `password` FROM usuarios WHERE username = ',quote(username),' into @rowCount, @pass');

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

call LogIn("owo","uwu");

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
	
	set @query5 = concat('INSERT INTO usuarios (username, password, email) VALUES (',quote(username),',MD5(',quote(passIn),'), ',quote(email),')');
    
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

call UserRegister("owos","uwu","owos@gmail.com");

-- Use this to register a new build
-- Just insert the data in the right order xd
DELIMITER $$
drop procedure if exists RegisterBuild $$
create procedure RegisterBuild(in ID_Usuario int, in ID_Almacenamiento_Sata int, in ID_Fuentes_poder int, in ID_Ram int, in ID_Tarjeta_grafica int, in ID_procesador int,
in ID_PlacaMadre int, in ID_Disipador int, in ID_Gabinete int, in ID_Ventilador int, in ID_Ssdm2 int, in Nombre varchar(100), in Descripcion longtext)
begin
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
            set message = "Something is null";
            select status_code, message, aut;
        end;
        
	declare continue handler for 1048
		begin
			set status_code = 1048;
            set message = "Couldn't register build";
            select status_code, message, aut;
        end;
        
	set @bigQuery = concat(
    "INSERT INTO `Builds` (`ID_Usuario`, `ID_Almacenamiento_Sata`, `ID_Fuentes_poder`, `ID_Ram`, `ID_Tarjeta_grafica`, `ID_procesador`, `ID_PlacaMadre`, 
    `ID_Disipador`, `ID_Gabinete`, `ID_Ventilador`, `ID_Ssdm2`, `Nombre`, `Descripcion`) 
    VALUES (",quote(ID_Usuario),", ",quote(ID_Almacenamiento_Sata),", ",quote(ID_Fuentes_poder),", ",quote(ID_Ram),", ",quote(ID_Tarjeta_grafica),", ",quote(ID_procesador),", 
    ",quote(ID_PlacaMadre),", ",quote(ID_Disipador),", ",quote(ID_Gabinete),", ",quote(ID_Ventilador),", ",quote(ID_Ssdm2),", ",quote(Nombre),", ",quote(Descripcion),")");
    
    prepare stm from @bigQuery;
    execute stm;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to select the neccesary data from a build
DELIMITER $$
drop procedure if exists SelectDataFromBuild $$
create procedure SelectDataFromBuild(in BuildId int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
	
	set @fulldataquery= concat('SELECT
    a.ID AS IDSata,
    a.modelo AS ModeloSata,
    f.ID AS IDFuente,
    f.modelo AS ModeloFuente,
    r.ID AS IDRam,
    r.modelo AS ModeloRam,
    tg.ID AS IDGrafica,
    tg.modelo AS ModeloGrafica,
    p.ID AS IDProcesador,
    p.modelo AS ModeloProcesador,
    pm.ID AS IDPlacaMadre,
    pm.modelo AS ModeloPlacaMadre,
    d.ID AS IDDisipador,
    d.modelo AS ModeloDisipador,
    g.ID AS IDGabinete,
    g.modelo AS ModeloGabinete,
    v.ID AS IDVentilador,
    v.modelo AS ModeloVentilador,
    s.ID AS IDSsdm2,
    s.modelo AS ModeloSsdm2
FROM
    Builds b
JOIN
    Almacenamiento_sata a ON b.ID_Almacenamiento_Sata = a.ID
JOIN
    Fuentes f ON b.ID_Fuentes_poder = f.ID
JOIN
    Ram r ON b.ID_Ram = r.ID
JOIN
    grafica tg ON b.ID_Tarjeta_grafica = tg.ID
JOIN
    Procesador p ON b.ID_procesador = p.ID
JOIN
    Placa pm ON b.ID_PlacaMadre = pm.ID
JOIN
    Disipador d ON b.ID_Disipador = d.ID
JOIN
    Gabinete g ON b.ID_Gabinete = g.ID
JOIN
    Ventilador v ON b.ID_Ventilador = v.ID
JOIN
    Ssdm2 s ON b.ID_Ssdm2 = s.ID where b.ID= ?');
    set @param = BuildId;
    prepare stm from @fulldataquery;
    execute stm using @param;
    deallocate prepare stm;
end $$
DELIMITER ;
