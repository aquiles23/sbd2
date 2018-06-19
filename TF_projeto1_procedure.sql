
-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  PROCEDURAL                        --
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


USE NUMTA;

DELIMITER $$

-- procedure que pega as imagens de uma pasta e insere na tabela

CREATE PROCEDURE INSERT_IMAGEM (in letra char)
BEGIN
    -- caso o mysql perca conexão mude o valor default de i para um numero posterior ao ultimo inserido e rode a procedure
	DECLARE i int default 0 ; 
    DECLARE done int default 0;
	repeat
		if i<10 then
			insert into IMAGEM(filename,imagem) 
				VALUES (concat(letra,'0000',i,'.png'),
					load_file(concat('/var/lib/mysql-files/training-',letra,'/',letra,'0000',i,'.png')));
		elseif i>=10 and i<100 then
			insert into IMAGEM(filename,imagem) 
				VALUES (concat(letra,'000',i,'.png'),
					load_file(concat('/var/lib/mysql-files/training-',letra,'/',letra,'000',i,'.png')));
		elseif i>=100 and i<1000 then
			insert into IMAGEM(filename,imagem) 
				VALUES (concat(letra,'00',i,'.png'),
					load_file(concat('/var/lib/mysql-files/training-',letra,'/',letra,'.00',i,'.png')));
		elseif i>=1000 and i<10000 then
			insert into IMAGEM(filename,imagem) 
				VALUES (concat(letra,'0',i,'.png'),
					load_file(concat('/var/lib/mysql-files/training-',letra,'/',letra,'0',i,'.png')));
		elseif i>=10000 then
			insert into IMAGEM(filename,imagem) 
				VALUES (concat(letra,i,'.png'),
					load_file(concat('/var/lib/mysql-files/training-',letra,'/',letra,i,'.png')));
		end if;
		set i = i + 1 ;
		until done = 1 END repeat;
	END $$
    
    call INSERT_IMAGEM('b') $$
    call INSERT_IMAGEM('c') $$
    call INSERT_IMAGEM('a') $$
    call INSERT_IMAGEM('d') $$
    call INSERT_IMAGEM('e') $$
    

        
