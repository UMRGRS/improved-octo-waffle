-- ---------
-- Utilidad
-- ---------

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
        
	set @query1 = concat('SELECT * FROM `',tableToConsult,'` WHERE ID=',IDToConsult);
    
	prepare stm1 from @query1;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

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

-- ---------
-- Utilidad
-- ---------

-- -----------------
-- Creador de builds
-- -----------------

-- Use this to retrieve every compatible component with the one you give it, works in both directions
-- SelectCompatibility("placa","disipador",1,1) --> This searches for the heatsinks compatible with the motherboard with the ID 1
-- SelectCompatibility("placa","disipador",1,2) --> This searches for the motherboards compatible with the heatksink with the ID 1
DELIMITER $$
drop procedure if exists SelectCompatibility $$
create procedure SelectCompatibility(in table1 varchar(20), in table2 varchar(20), in IDToConsult int, in direction int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
	declare tableName varchar (50);
	
	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
            select status_code, message;
        end;
       
	set tableName = concat('compatibilidad_',table1,'_',table2);
    if(direction = 1) then
   		set @compQuery = concat('select s.ID, s.modelo, s.marca, s.imagen from ',table2,' s join ',tableName,' comp on s.ID = comp.ID_',table2,' where comp.ID_Principal = ',IDToConsult);
    elseif(direction = 2) then
    	set @compQuery = concat('select s.ID, s.modelo, s.marca, s.imagen from ',table1,' s join ',tableName,' comp on s.ID = comp.ID_Principal where comp.ID_',table2,' = ',IDToConsult);
    end if;

	prepare stm from @compQuery;
    execute stm;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to register a new build
-- Just insert the data in the right order xd
DELIMITER $$
drop procedure if exists RegisterBuild $$
create procedure RegisterBuild(in ID_Usuario int, in ID_Almacenamiento_Sata int, in ID_Fuentes_poder int, in ID_Ram int, in ID_Grafica int, in ID_Procesador int,
in ID_PlacaMadre int, in ID_Disipador int, in ID_Gabinete int, in ID_Ventilador int, in ID_Ssdm2 int, in Nombre varchar(100), in Descripcion longtext,in Imagen varchar(100))
begin
    declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
    declare continue handler for 1062
		begin
			set status_code = 1062;
            set message = "Something is null";
            select status_code, message;
        end;
        
	declare continue handler for 1048
		begin
			set status_code = 1048;
            set message = "Couldn't register build";
            select status_code, message;
        end;
        
	set @bigQuery = ("INSERT INTO `builds` VALUES (0,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   
   	set @param = ID_Usuario;
   	set @param1 = ID_Almacenamiento_Sata;
   	set @param2 = ID_Fuentes_poder;
   	set @param3 = ID_Ram;
    set @param4 = ID_Grafica;
    set @param5 = ID_Procesador;
    set @param6 = ID_PlacaMadre;
    set @param7 = ID_Disipador;
    set @param8 = ID_Gabinete;
    set @param9 = ID_Ventilador;
    set @param10 = ID_Ssdm2;
    set @param11 = Nombre;
    set @param12 = Descripcion;
    set @param13 = Imagen;
    prepare stm from @bigQuery;
    execute stm using @param,@param1,@param2,@param3,@param4,@param5,@param6,@param7,@param8,@param9,@param10,@param11,@param12,@param13;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to retrieve some components for every category of the build creator
DELIMITER $$
drop procedure if exists SelectComponents $$
create procedure SelectComponents(in tableToConsult varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
 	set @query0 = concat('SELECT ID, modelo, marca, imagen, link FROM `', tableToConsult,'` ORDER BY rand() LIMIT 5');
 	set @param = tableToConsult;
	prepare stm1 from @query0;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;


-- -----------------
-- Creador de builds
-- -----------------

-- -------------------------
-- Inicio de sesion/registro
-- -------------------------

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
    
	set @query4 = concat('SELECT count(*), ID, `password` FROM usuarios WHERE username = ',quote(username),' into @rowCount, @id, @pass');

    prepare stm from @query4;
	execute stm;
	deallocate prepare stm;
    
    if(@rowCount = 1) then
        if(MD5(passIn) = @pass) then
			set aut = true;
			set message = "Sitio web mas adelante";
            select status_code, message, aut, @id;
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

-- Use this to register new users
-- Takes 1- username 2- password 3- email
-- aut -> false: user wasn't registered true: user was registered successfully
DELIMITER $$
drop procedure if exists UserRegister $$
create procedure UserRegister(in username varchar(50),in passIn blob,in email varchar(100))
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
	
	set @insertQuery = 'INSERT INTO usuarios (username, password, email) VALUES ( ? , MD5(?), ?)';
    set @idQuery = 'SELECT ID FROM usuarios where username = ? into @id'; 
   
   	set @param = username;
   	set @param1 = passIn;
   	set @param2 = email;
   
    prepare stm from @insertQuery;
    execute stm using @param, @param1, @param2;
   	deallocate prepare stm;

    if(status_code = 0) then
			set aut = true;
            set message = "User successfully registered";
           	prepare stm1 from @idQuery;
    		execute stm1 using @param;
   			deallocate prepare stm1;
            select status_code, message, aut, @id;
    end if;
end $$
DELIMITER ;

-- -------------------------
-- Inicio de sesion/registro
-- -------------------------

-- ------------------
-- Perfil del usuario
-- ------------------

-- Use this to get name and description of every build the user has created
DELIMITER $$
drop procedure if exists GetUserBuilds $$
create procedure GetUserBuilds(in UserID int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
    set @buildsquery = ('SELECT ID, Nombre, Descripcion, imagen from builds where ID_Usuario = ?');
   	set @param =  UserID;
   	prepare stm from @buildsquery;
  	execute stm using @param;
  	deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to update the user's data
-- Change to only password
DELIMITER $$
drop procedure if exists UpdateUserInfo $$
create procedure UpdateUserInfo(in UserID int, in UpPassword varchar(20))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
        
    set @updateQuery = ('UPDATE usuarios SET password = MD5(?) where ID = ?');
    set @param = UpPassword;
	set @param1 = UserID;
    prepare stm from @updateQuery;
    execute stm using @param, @param1;
    deallocate prepare stm;
end $$
DELIMITER ; 

-- Use this to delete builds
DELIMITER $$
drop procedure if exists deleteBuild $$
create procedure deleteBuild(in buildID int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
        
    set @deleteQuery = ('DELETE FROM builds where ID = ?');
    set @param = buildID;

    prepare stm from @deleteQuery;
    execute stm using @param;
    deallocate prepare stm;
end $$
DELIMITER ; 

-- ------------------
-- Perfil del usuario
-- ------------------

-- --------------
-- Detalles build
-- --------------

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
			select status_code, message;
        end;
	
	set @fulldataquery= concat('SELECT
    a.ID AS IDSata,
    a.modelo AS modeloSata,
	a.imagen AS imgSata,
	a.link AS linkSata,

    f.ID AS IDFuente,
    f.modelo AS modeloFuente,
	f.imagen AS imgFuente,
	f.link AS linkFuente,

    r.ID AS IDRam,
    r.modelo AS modeloRam,
    r.imagen AS imgRam,
    r.link AS linkRam,

    tg.ID AS IDGrafica,
    tg.modelo AS modeloGrafica,
    tg.imagen AS imgGrafica,
    tg.link AS linkGrafica,

    p.ID AS IDProcesador,
    p.modelo AS modeloProcesador,
    p.imagen AS imgProcesador,
    p.link AS linkProcesador,

    pm.ID AS IDPlacaMadre,
    pm.modelo AS modeloPlacaMadre,
    pm.imagen AS imgPlacaMadre,
    pm.link AS linkPlacaMadre,

    d.ID AS IDDisipador,
    d.modelo AS modeloDisipador,
    d.imagen AS imgDisipador,
    d.link AS linkDisipador,

    g.ID AS IDGabinete,
    g.modelo AS modeloGabinete,
    g.imagen AS imgGabinete,
    g.link AS linkGabinete,

    v.ID AS IDVentilador,
    v.modelo AS modeloVentilador,
    v.imagen AS imgVentilador,
    v.link AS linkVentilador,

    s.ID AS IDSsdm2,
    s.modelo AS modeloSsdm2,
	s.imagen AS imgSsdm2,
    s.link AS linkSsdm2
FROM
    builds b
JOIN
    `almacenamiento sata` a ON b.ID_Almacenamiento_Sata = a.ID
JOIN
    fuentes f ON b.ID_Fuentes_poder = f.ID
JOIN
    ram r ON b.ID_Ram = r.ID
JOIN
    grafica tg ON b.ID_grafica = tg.ID
JOIN
    procesador p ON b.ID_procesador = p.ID
JOIN
    placa pm ON b.ID_PlacaMadre = pm.ID
JOIN
    disipador d ON b.ID_Disipador = d.ID
JOIN
    gabinete g ON b.ID_Gabinete = g.ID
JOIN
    ventilador v ON b.ID_Ventilador = v.ID
JOIN
    Ssdm2 s ON b.ID_Ssdm2 = s.ID where b.ID= ?');
    set @param = BuildId;
    prepare stm from @fulldataquery;
    execute stm using @param;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Get random components as recomendations
DELIMITER $$
drop procedure if exists GetRecomendations $$
create procedure GetRecomendations(in tableToConsult varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
 	set @query0 = concat('SELECT ID,modelo,imagen,link FROM `', tableToConsult,'` ORDER BY rand() LIMIT 3');
 	set @param = tableToConsult;
	prepare stm1 from @query0;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

-- --------------
-- Detalles build
-- --------------

-- ---------
-- Triggers
-- ---------
DELIMITER $$
DROP TRIGGER IF EXISTS after_update_almacenamiento_sata $$
CREATE TRIGGER after_update_almacenamiento_sata
BEFORE UPDATE ON almacenamiento_sata 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla almacenamiento_sata actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_disipador $$
CREATE TRIGGER after_update_disipador
BEFORE UPDATE ON disipador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla disipador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_fuentes $$
CREATE TRIGGER after_update_fuentes
BEFORE UPDATE ON fuentes 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla fuentes actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_gabinete $$
CREATE TRIGGER after_update_gabinete
BEFORE UPDATE ON gabinete 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla gabinete actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_grafica $$
CREATE TRIGGER after_update_grafica
BEFORE UPDATE ON grafica 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla grafica actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_placa $$
CREATE TRIGGER after_update_placa
BEFORE UPDATE ON placa 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla placa actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_procesador $$
CREATE TRIGGER after_update_procesador
BEFORE UPDATE ON procesador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla procesador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ram $$
CREATE TRIGGER after_update_ram
BEFORE UPDATE ON ram 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ram actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ssdm2 $$
CREATE TRIGGER after_update_ssdm2
BEFORE UPDATE ON ssdm2 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ssdm2 actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ventilador $$
CREATE TRIGGER after_update_ventilador
BEFORE UPDATE ON ventilador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ventilador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;
-- ---------
-- Triggers
-- ----------- ---------
-- Utilidad
-- ---------

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
        
	set @query1 = concat('SELECT * FROM `',tableToConsult,'` WHERE ID=',IDToConsult);
    
	prepare stm1 from @query1;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

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

-- ---------
-- Utilidad
-- ---------

-- -----------------
-- Creador de builds
-- -----------------

-- Use this to retrieve every compatible component with the one you give it, works in both directions
-- SelectCompatibility("placa","disipador",1,1) --> This searches for the heatsinks compatible with the motherboard with the ID 1
-- SelectCompatibility("placa","disipador",1,2) --> This searches for the motherboards compatible with the heatksink with the ID 1
DELIMITER $$
drop procedure if exists SelectCompatibility $$
create procedure SelectCompatibility(in table1 varchar(20), in table2 varchar(20), in IDToConsult int, in direction int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
	declare tableName varchar (50);
	
	declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
            select status_code, message;
        end;
       
	set tableName = concat('compatibilidad_',table1,'_',table2);
    if(direction = 1) then
   		set @compQuery = concat('select s.ID, s.modelo, s.marca, s.imagen from ',table2,' s join ',tableName,' comp on s.ID = comp.ID_',table2,' where comp.ID_Principal = ',IDToConsult);
    elseif(direction = 2) then
    	set @compQuery = concat('select s.ID, s.modelo, s.marca, s.imagen from ',table1,' s join ',tableName,' comp on s.ID = comp.ID_Principal where comp.ID_',table2,' = ',IDToConsult);
    end if;

	prepare stm from @compQuery;
    execute stm;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to register a new build
-- Just insert the data in the right order xd
DELIMITER $$
drop procedure if exists RegisterBuild $$
create procedure RegisterBuild(in ID_Usuario int, in ID_Almacenamiento_Sata int, in ID_Fuentes_poder int, in ID_Ram int, in ID_Grafica int, in ID_Procesador int,
in ID_PlacaMadre int, in ID_Disipador int, in ID_Gabinete int, in ID_Ventilador int, in ID_Ssdm2 int, in Nombre varchar(100), in Descripcion longtext,in Imagen varchar(100))
begin
    declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
    declare continue handler for 1062
		begin
			set status_code = 1062;
            set message = "Something is null";
            select status_code, message;
        end;
        
	declare continue handler for 1048
		begin
			set status_code = 1048;
            set message = "Couldn't register build";
            select status_code, message;
        end;
        
	set @bigQuery = ("INSERT INTO `builds` VALUES (0,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   
   	set @param = ID_Usuario;
   	set @param1 = ID_Almacenamiento_Sata;
   	set @param2 = ID_Fuentes_poder;
   	set @param3 = ID_Ram;
    set @param4 = ID_Grafica;
    set @param5 = ID_Procesador;
    set @param6 = ID_PlacaMadre;
    set @param7 = ID_Disipador;
    set @param8 = ID_Gabinete;
    set @param9 = ID_Ventilador;
    set @param10 = ID_Ssdm2;
    set @param11 = Nombre;
    set @param12 = Descripcion;
    set @param13 = Imagen;
    prepare stm from @bigQuery;
    execute stm using @param,@param1,@param2,@param3,@param4,@param5,@param6,@param7,@param8,@param9,@param10,@param11,@param12,@param13;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to retrieve some components for every category of the build creator
DELIMITER $$
drop procedure if exists SelectComponents $$
create procedure SelectComponents(in tableToConsult varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
 	set @query0 = concat('SELECT ID, modelo, marca, imagen, link FROM `', tableToConsult,'` ORDER BY rand() LIMIT 5');
 	set @param = tableToConsult;
	prepare stm1 from @query0;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;


-- -----------------
-- Creador de builds
-- -----------------

-- -------------------------
-- Inicio de sesion/registro
-- -------------------------

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
    
	set @query4 = concat('SELECT count(*), ID, `password` FROM usuarios WHERE username = ',quote(username),' into @rowCount, @id, @pass');

    prepare stm from @query4;
	execute stm;
	deallocate prepare stm;
    
    if(@rowCount = 1) then
        if(MD5(passIn) = @pass) then
			set aut = true;
			set message = "Sitio web mas adelante";
            select status_code, message, aut, @id;
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

-- Use this to register new users
-- Takes 1- username 2- password 3- email
-- aut -> false: user wasn't registered true: user was registered successfully
DELIMITER $$
drop procedure if exists UserRegister $$
create procedure UserRegister(in username varchar(50),in passIn blob,in email varchar(100))
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
	
	set @insertQuery = 'INSERT INTO usuarios (username, password, email) VALUES ( ? , MD5(?), ?)';
    set @idQuery = 'SELECT ID FROM usuarios where username = ? into @id'; 
   
   	set @param = username;
   	set @param1 = passIn;
   	set @param2 = email;
   
    prepare stm from @insertQuery;
    execute stm using @param, @param1, @param2;
   	deallocate prepare stm;

    if(status_code = 0) then
			set aut = true;
            set message = "User successfully registered";
           	prepare stm1 from @idQuery;
    		execute stm1 using @param;
   			deallocate prepare stm1;
            select status_code, message, aut, @id;
    end if;
end $$
DELIMITER ;

-- -------------------------
-- Inicio de sesion/registro
-- -------------------------

-- ------------------
-- Perfil del usuario
-- ------------------

-- Use this to get name and description of every build the user has created
DELIMITER $$
drop procedure if exists GetUserBuilds $$
create procedure GetUserBuilds(in UserID int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message, aut;
        end;
    set @buildsquery = ('SELECT ID, Nombre, Descripcion, imagen from builds where ID_Usuario = ?');
   	set @param =  UserID;
   	prepare stm from @buildsquery;
  	execute stm using @param;
  	deallocate prepare stm;
end $$
DELIMITER ;

-- Use this to update the user's data
-- Change to only password
DELIMITER $$
drop procedure if exists UpdateUserInfo $$
create procedure UpdateUserInfo(in UserID int, in UpPassword varchar(20))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
        
    set @updateQuery = ('UPDATE usuarios SET password = MD5(?) where ID = ?');
    set @param = UpPassword;
	set @param1 = UserID;
    prepare stm from @updateQuery;
    execute stm using @param, @param1;
    deallocate prepare stm;
end $$
DELIMITER ; 

-- Use this to delete builds
DELIMITER $$
drop procedure if exists deleteBuild $$
create procedure deleteBuild(in buildID int)
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
        
    set @deleteQuery = ('DELETE FROM builds where ID = ?');
    set @param = buildID;

    prepare stm from @deleteQuery;
    execute stm using @param;
    deallocate prepare stm;
end $$
DELIMITER ; 

-- ------------------
-- Perfil del usuario
-- ------------------

-- --------------
-- Detalles build
-- --------------

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
			select status_code, message;
        end;
	
	set @fulldataquery= concat('SELECT
    a.ID AS IDSata,
    a.modelo AS modeloSata,
	a.imagen AS imgSata,
	a.link AS linkSata,

    f.ID AS IDFuente,
    f.modelo AS modeloFuente,
	f.imagen AS imgFuente,
	f.link AS linkFuente,

    r.ID AS IDRam,
    r.modelo AS modeloRam,
    r.imagen AS imgRam,
    r.link AS linkRam,

    tg.ID AS IDGrafica,
    tg.modelo AS modeloGrafica,
    tg.imagen AS imgGrafica,
    tg.link AS linkGrafica,

    p.ID AS IDProcesador,
    p.modelo AS modeloProcesador,
    p.imagen AS imgProcesador,
    p.link AS linkProcesador,

    pm.ID AS IDPlacaMadre,
    pm.modelo AS modeloPlacaMadre,
    pm.imagen AS imgPlacaMadre,
    pm.link AS linkPlacaMadre,

    d.ID AS IDDisipador,
    d.modelo AS modeloDisipador,
    d.imagen AS imgDisipador,
    d.link AS linkDisipador,

    g.ID AS IDGabinete,
    g.modelo AS modeloGabinete,
    g.imagen AS imgGabinete,
    g.link AS linkGabinete,

    v.ID AS IDVentilador,
    v.modelo AS modeloVentilador,
    v.imagen AS imgVentilador,
    v.link AS linkVentilador,

    s.ID AS IDSsdm2,
    s.modelo AS modeloSsdm2,
	s.imagen AS imgSsdm2,
    s.link AS linkSsdm2
FROM
    builds b
JOIN
    `almacenamiento sata` a ON b.ID_Almacenamiento_Sata = a.ID
JOIN
    fuentes f ON b.ID_Fuentes_poder = f.ID
JOIN
    ram r ON b.ID_Ram = r.ID
JOIN
    grafica tg ON b.ID_grafica = tg.ID
JOIN
    procesador p ON b.ID_procesador = p.ID
JOIN
    placa pm ON b.ID_PlacaMadre = pm.ID
JOIN
    disipador d ON b.ID_Disipador = d.ID
JOIN
    gabinete g ON b.ID_Gabinete = g.ID
JOIN
    ventilador v ON b.ID_Ventilador = v.ID
JOIN
    Ssdm2 s ON b.ID_Ssdm2 = s.ID where b.ID= ?');
    set @param = BuildId;
    prepare stm from @fulldataquery;
    execute stm using @param;
    deallocate prepare stm;
end $$
DELIMITER ;

-- Get random components as recomendations
DELIMITER $$
drop procedure if exists GetRecomendations $$
create procedure GetRecomendations(in tableToConsult varchar(50))
begin
	declare status_code int default 0;
    declare message varchar(50);
    
    declare continue handler for sqlexception
		begin
			set status_code = -1;
            set message = "Ocurrio un error";
			select status_code, message;
        end;
 	set @query0 = concat('SELECT ID,modelo,imagen,link FROM `', tableToConsult,'` ORDER BY rand() LIMIT 3');
 	set @param = tableToConsult;
	prepare stm1 from @query0;
	execute stm1;
	deallocate prepare stm1;
end $$
DELIMITER ;

-- --------------
-- Detalles build
-- --------------

-- ---------
-- Triggers
-- ---------
DELIMITER $$
DROP TRIGGER IF EXISTS after_update_almacenamiento_sata $$
CREATE TRIGGER after_update_almacenamiento_sata
BEFORE UPDATE ON almacenamiento_sata 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla almacenamiento_sata actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_disipador $$
CREATE TRIGGER after_update_disipador
BEFORE UPDATE ON disipador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla disipador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_fuentes $$
CREATE TRIGGER after_update_fuentes
BEFORE UPDATE ON fuentes 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla fuentes actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_gabinete $$
CREATE TRIGGER after_update_gabinete
BEFORE UPDATE ON gabinete 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla gabinete actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_grafica $$
CREATE TRIGGER after_update_grafica
BEFORE UPDATE ON grafica 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla grafica actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_placa $$
CREATE TRIGGER after_update_placa
BEFORE UPDATE ON placa 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla placa actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_procesador $$
CREATE TRIGGER after_update_procesador
BEFORE UPDATE ON procesador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla procesador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ram $$
CREATE TRIGGER after_update_ram
BEFORE UPDATE ON ram 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ram actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ssdm2 $$
CREATE TRIGGER after_update_ssdm2
BEFORE UPDATE ON ssdm2 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ssdm2 actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;

DELIMITER $$
DROP TRIGGER IF EXISTS after_update_ventilador $$
CREATE TRIGGER after_update_ventilador
BEFORE UPDATE ON ventilador 
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (`Accion`, `Usuario`, `Fecha/hora`)
    VALUES (concat('Tabla ventilador actualizada en la ID ',old.ID), concat('Usuario = ',user(),' Connection ID = ',connection_id()), NOW());
END $$
DELIMITER ;
-- ---------
-- Triggers
-- ---------