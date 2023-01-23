#-----------------------NOTAS
SET foreign_key_checks = 1;# para modificar el ignorar foreign key 1 o 0

#SET SESSION sql_mode = sys.list_add(@@session.sql_mode, 'ONLY_FULL_GROUP_BY');
#SELECT @@session.sql_mode;

#se tiene que modificar el sql_mode para que pueda ejecutarse el procedimiento a la consulta
SET sql_mode = '';
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';


#se utiliza para modificar datos fuera de los primary key
insert into pokemon_abilities(pok_id,abil_id,is_hidden,slot) values(721,13,0,1) on duplicate key update abil_id=13,is_hidden=0;