
-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de criação(DDL)                        --
--                                                                   --
-- Data Criacao ...........: 16/06/2018                              --
-- Autor(es) ..............: José Aquiles , Ramon           --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: NUMTA                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 2 tabelas                                              --
-- ----------------------------------------------------------------- --
create database NUMTA;
use NUMTA;

CREATE TABLE INFO (
    filename VARCHAR(20) PRIMARY KEY NOT NULL,
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
    filename VARCHAR(20) UNIQUE NOT NULL,
    CONSTRAINT info_imagem_FK FOREIGN KEY (filename)
        REFERENCES INFO (filename)
)  ENGINE=INNODB;



        

