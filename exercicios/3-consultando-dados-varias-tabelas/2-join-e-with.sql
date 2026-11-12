-- Crie uma consulta para realizar inner join com as 
-- tabelas "tracks", "albums" e "artists"
--Não colocar vírgula entre a tabela e os inners (não necessário, nem na de baixo)

SELECT
tra.TrackID as id,
tra.name as musica,
alb.title as album,
art.Name as artista

FROM 
tracks as tra

INNER join albums as alb on tra.albumid = alb.albumid
INNER JOIN ARTISTS AS art on art.artistid = alb.artistid;

-- Refatore a consulta anterior usando a cláusula 
-- "with" e verifique o total de músicas existente na 
--  base de terminado artista, ex: Caetano Veloso

with musica as (

SELECT
tra.TrackID as id,
tra.name as musica,
alb.title as album,
art.Name as artista

FROM 
tracks as tra

INNER join albums as alb on tra.albumid = alb.albumid
INNER JOIN ARTISTS AS art on art.artistid = alb.artistid)

SELECT  
artista,
count(musica) as qnt_tot_misic
FROM
musica
where
artista like 'Cae%';