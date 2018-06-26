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

use olympic;

create user ADMIN
identified by 'ahnes';

grant all on olympic.* to ADMIN ;



