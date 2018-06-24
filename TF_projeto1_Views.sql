-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de criação(DDL)                        --
--                                                                   --
-- Data Criacao ...........: 17/10/2018                              --
-- Autor(es) ..............: José Aquiles , Ramon           --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: NUMTA                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 2 tabelas                                              --
-- ----------------------------------------------------------------- --

CREATE VIEW TRAINING_A AS 
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit, 
        i.database_name, 
        i.database_name_original, 
        i.contributing_team,
        im.imagem 
        FROM INFO i, IMAGEM im
			where i.filename like 'a%' and i.filename = im.filename;
            
CREATE VIEW TRAINING_B AS
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit, 
        i.database_name, 
        i.database_name_original, 
        i.contributing_team,
        im.imagem
        FROM INFO i, IMAGEM im
			where i.filename like 'b%' and i.filename = im.filename;

CREATE VIEW TRAINING_C AS
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit, 
        i.database_name, 
        i.database_name_original, 
        i.contributing_team,
        im.imagem
        FROM INFO i, IMAGEM im
			where i.filename like 'c%' and i.filename = im.filename;

CREATE VIEW TRAINING_D AS
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit, 
        i.database_name,
        i.num,
        i.database_name_original, 
        i.contributing_team,
        im.imagem
        FROM INFO i, IMAGEM im
			where i.filename like 'd%' and i.filename = im.filename;

CREATE VIEW TRAINING_E AS
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit,
        i.districtid,
		i.institutionid,
		i.gender,
		i.age,
		i.datestamp,
        i.database_name, 
        i.database_name_original,
        im.imagem
        FROM INFO i, IMAGEM im
			where i.filename like 'e%' and i.filename = im.filename;
