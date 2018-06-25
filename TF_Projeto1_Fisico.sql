-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de criação(DDL)                        --
--                                                                   --
-- Data Criacao ...........: 24/06/2018                              --
-- Autor(es) ..............: José Aquiles , Ramon           --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: olympic                                  --
--                                                                   --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 2 tabelas                                              --
-- ----------------------------------------------------------------- --

create database olympic;
use olympic;

CREATE TABLE NOC_REGION(
	NOC VARCHAR(10) NOT NULL PRIMARY KEY,
    region varchar(50),
    notes varchar(50)
);

CREATE TABLE ATHLETE_EVENT(
	ID INT NOT NULL PRIMARY KEY,
    name varchar(50),
    sex CHAR(1),
    age INT,
    height float,
    weight float,
    team varchar(50),
    NOC varchar(10),
    games varchar(50),
    year int,
    season varchar(50),
    city varchar(50),
    sport varchar(50),
    event varchar(100),
    medal varchar(10),
    constraint noc_region_athlete_eventFK foreign key(NOC) REFERENCES NOC_REGION(NOC)
);