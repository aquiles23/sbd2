-- --------            << PROJETO1 >>            ------------ --
--                                                                   --
--                    SCRIPT  de manipulação(DDL)                        --
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

-- consulta que procura pelas informações sobre o giba e sobre a olimpiada que ele participou em 2000 sem precisar saber o nome dele
create index nameIDX on ATHLETE(name);
create index sportIDX on EVENT(sport);
SELECT 
    a.name,
    a.sex,
    a.height,
    a.weight,
    a.noc,
    e.games,
    e.sport,
    e.city,
    e.medal,
    e.event
FROM
    ATHLETE a,
    participate p,
    EVENT e
WHERE
    e.sport = 'Volleyball'
        AND a.name LIKE '%giba%'
        AND e.year = 2000
        AND a.NOC = 'BRA'
        AND a.ID = p.athlete_id
        AND p.year = e.year
        AND p.event = e.event;

-- esta consulta retorna quantas atletas mulheres que disputaram tennis nas olimpiadas tem nessa base de dados(atenas 1896 até rio de janeiro 2016)
create index sexIDX on ATHLETE(sex);
SELECT 
    e.sport, COUNT(a.sex) AS n_feminino
FROM
    ATHLETE a,
    participate p,
    EVENT e
WHERE
    e.sport = 'Tennis' AND a.NOC = 'BRA'
        AND a.sex = 'F'
        AND a.ID = p.athlete_id
        AND p.year = e.year
        AND p.event = e.event
GROUP BY (e.sport);
            
-- essa consulta retorna o ano da primeira olimpiada desde 1896 em que o brasil teve um time de basket participando           
SELECT 
    e.sport, MIN(e.year) AS ano_primeira_olimpiada, n.region
FROM
    ATHLETE a,
    participate p,
    EVENT e,
    NOC_REGION n
WHERE
    e.sport = 'Basketball' AND n.NOC = 'BRA'
        AND n.NOC = a.NOC
        AND a.ID = p.athlete_id
        AND p.year = e.year
        AND p.event = e.event;