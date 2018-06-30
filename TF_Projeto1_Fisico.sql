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
--         => 4 tabelas                                              --
-- ----------------------------------------------------------------- --

create database olympic;
use olympic;

CREATE TABLE NOC_REGION (
    NOC VARCHAR(10) NOT NULL PRIMARY KEY,
    region VARCHAR(50),
    notes VARCHAR(50)
);

CREATE TABLE ATHLETE (
    ID INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    sex CHAR(1),
    height VARCHAR(10),
    weight VARCHAR(10),
    team VARCHAR(50),
    NOC VARCHAR(10),
    CONSTRAINT noc_region_athlete foreign key (NOC) references NOC_REGION (NOC)
);

CREATE TABLE EVENT (
    games VARCHAR(50),
    year INT NOT NULL,
    season VARCHAR(50),
    city VARCHAR(50),
    sport VARCHAR(50),
    event VARCHAR(100) NOT NULL,
    CONSTRAINT eventPK PRIMARY KEY (event , year)
);

CREATE TABLE participate (
    athlete_id INT NOT NULL,
    event VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    age int,
    medal varchar(10),
    CONSTRAINT participatePK PRIMARY KEY (athlete_id , event , year),
    CONSTRAINT athlete_participate FOREIGN KEY (athlete_id)
        REFERENCES ATHLETE (ID),
    CONSTRAINT event_participate FOREIGN KEY (event , year)
        REFERENCES EVENT (event , year)
);

