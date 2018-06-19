
-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de criação(DDL)                        --
--                                                                   --
-- Data Criacao ...........: 13/10/2017                              --
-- Autor(es) ..............: José Aquiles , Ramon           --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: NUMTA                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 1 procedure                                           --
--         => 2 tabelas                                              --
--         => 3 views                                                --
-- ----------------------------------------------------------------- --
create database if not exists NUMTA;
use NUMTA;

CREATE TABLE INFO (
    filename VARCHAR(20) PRIMARY KEY,
    original_filename VARCHAR(50),
    scanid INT,
    digit INT,
    database_name_original VARCHAR(50),
    contributing_team VARCHAR(50),
    database_name VARCHAR(50),
    num int,
    districtid int,
    institutionid int,
    gender int,
    age int,
    datestamp int
)  ENGINE=INNODB;


CREATE TABLE IMAGEM (
    imagem BLOB,
    filename VARCHAR(20) UNIQUE,
    CONSTRAINT info_imagem_FK FOREIGN KEY (filename)
        REFERENCES INFO (filename)
)  ENGINE=INNODB;


CREATE VIEW TRAINING_A AS 
	select i.filename,
		i.original_filename, 
		i.scanid, 
        i.digit, 
        i.database_name, 
        i.database_name_original, 
        i.contributing_team 
        FROM INFO i, IMAGEM im
			where i.filename like 'a%' and i.filename = im.filename;
            

