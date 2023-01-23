use pokemonnew;

drop procedure if exists modifica_habilidades;
drop procedure if exists modifica_movimientos;
drop procedure if exists modifica_tipos;
drop procedure if exists modifica_pokemon;
drop procedure if exists modifica_pokemon_habilidades;

delimiter //
create procedure Modifica_Habilidades(in ID int, in nombre varchar(79))
begin
update abilities set abil_name=nombre where abil_id=ID;
end //
delimiter ;

delimiter //
create procedure Modifica_Movimientos(in ID int,in nombre varchar(79),in tID int,in mpower smallint,in mpp smallint,in maccu smallint)
begin
update  moves 
set move_name=nombre, type_id=tID,move_power=mpower,move_pp=mpp,move_accuracy=maccu 
where move_id=ID;
end //
delimiter ;

delimiter //
create procedure Modifica_Tipos(in ID int,in nombre varchar(79),in dmgtipoid int)
begin
update `types` 
set type_name=nombre, damage_type_id=dmgtipoid
where type_id=ID;
end //
delimiter ;

delimiter //
create procedure Modifica_Pokemon(in ID int, in nombre varchar(79),in alto int,in peso int,in exp int)
begin
update pokemon
set pok_name=nombre,pok_height=alto,pok_weight=peso,pok_base_experience=exp
where pok_id=ID;
end //
delimiter ;

delimiter //
create procedure Modifica_Pokemon_Habilidades(in ID int,in slt int,in IDHab int,in hide tinyint)
begin
update pokemon_abilities
set abil_id=IDHab,is_hidden=hide
where pok_id=ID and slot=slt;
end //
delimiter ;
